##' @export
terrals <- function(a) ls(a)



##' has terra initialized?
##' return TRUE if yes
##' @export
thasinitialized <- function(){
    if(is.na(.Call("isInitialized",NULL))) TRUE else FALSE
}



##' initializes the terra subsystem
##' @param rcppflags provide your own value for R CMD config
##'     --cppflags (if you do, a character vector)
##' @param luatstate a preexisting laustate
##' @param options if verbose >0 then lots of output and if debug>0
##'     then line numebrs in stack traces
##' @return TRUE upon success, error if it fails
##' @export
tinit <- function(
    rcppflags = processCppFlags(system("R CMD config --cppflags",intern=TRUE))
   ,luastate  = NULL
   ,options   = list(verbose=0L, debug=1L)
    ){
    a1 <- paste(c(  system.file("include",package="rterra"),rcppflags),collapse=";")
    a1 <- sprintf("%s;%s;.",a1, getwd())
    if(options$debug>0){
        cat(sprintf("[terrific] INCLUDE_PATH=%s\n", a1))
    }
    Sys.setenv(INCLUDE_PATH=a1)
    a <- .Call("initTerrific",as.integer(c(options$verbose, options$debug)),luastate,PACKAGE="rterra")
    if(is.character(a)) error(sprintf("[terrific error]: %s",a))
    bp <- system.file("luamodules","base.t",package="rterra")
    res <- terraFile(bp)
    libraries <- system.file("libs","rterra.so",package="rterra")
    .Call("initLibraryLoad",NULL,"___startit",libraries,PACKAGE="rterra")
    LUAMODPATH=system.file("luamodules",package="rterra")
    res = terraAddGeneralPaths(sprintf("%s/?.t;%s/?/init.t"
                                       ,LUAMODPATH,LUAMODPATH
                                       ),"package.terrapath")
    res = terraAddGeneralPaths(sprintf("%s/share/lua/5.1/?.lua;%s/share/lua/5.1/?/init.lua"
                                       ,LUAMODPATH,LUAMODPATH
                                       ),"package.path")
    res = terraAddGeneralPaths(sprintf("%s/lib64/lua/5.1/?.so;"
                                       ,LUAMODPATH
                                       ),"package.cpath")
#    terraStr("R,Rbase = require 'typesandfunctions' ()")
 #   terraStr("Rt = require('callterra')")
  ## terraFile(system.file("examples","tests.t",package="rterra"))
  TRUE
}

fns <- sapply(0:10,function(a) sprintf("doTerraFunc%s",a))

##' Loads code from a terra file
##' Similar to R's source command, this command runs the terra file through terra
##' @param filename the path to a terra file
##' @return 1 or 0 upon success or failure
##' @author Saptarshi Guha
##' @seealso \code{\link{terra}},\code{\link{terraStr}}
##' @export
terraFile <- function(filename){
  x <- .Call("terraDoFile",normalizePath(filename),PACKAGE="rterra")
}

##' Runs a terra/lua function 
##' Similar to R's .Call command, this calls a terra/lua function
##' @param f  the function name
##' @param ... arguments to f. Currently at most 10
##' @param table if your terra/lua function is not part of Terra's globals but a member of a table, pass the table name here
##' @return for this to return anything, the function called must
##' return an R object (or a lua object wrapped in an R external
##' pointer,but be careful of Lua's gc)
##' @seealso \code{\link{terra}},\code{\link{terraStr}}
##' @export 
terra <- function(f,...,table=NULL){
  ## l <- length(match.call(expand.dots=FALSE)[[3]]) ## arg1 == terra, arg2==f
  ## above has a problem when no ... is passed!
  l <- (as.list(match.call(expand.dots=FALSE))[["..."]])
  .Call(fns[[length(l)+1]],f,table,...,PACKAGE="rterra")
}

##' Evaluates a terra string
##' @param s   the string to evaluate
##' @return 1 or 0 upon success
##' @seealso \code{\link{terra}},\code{\link{terraFile}}
##' @export 
terraStr <- function(s){
  a <- .Call("terraDoString",s,PACKAGE="rterra")
}

##' Adds include paths to the terra system
##' @param paths a vector of paths to load
##' @return throws an error upon failure
##' @seealso \code{\link{terraAddRequirePaths}},\code{\link{terraLinkLibrary}},and \code{\link{processCppFlags}}
##' @export 
terraAddIncludePaths <- function(paths){
  for(i in paths){
    terraStr(sprintf('package.path = package.path .. ";%s;"', i))
    stop(sprintf("[terrific error]: Adding path %s caused an error", i))
  }
}

##' Adds include paths to the terra system
##' @param paths a vector of paths to load
##' @return throws an error upon failure
##' @details This is for terralib.require to discover paths. To see how this works
##'  see http://lua-users.org/wiki/ModulesTutorial
##' Appends 'paths' to the package.path variable
##' @seealso \code{\link{terraAddIncludePaths}},\code{\link{terraLinkLibrary}},,\code{\link{terraAddGeneralPaths}}
##' @export 
terraAddRequirePaths <- function(modulenames,terra=FALSE){
if(!terra){
    terraAddGeneralPaths(modulenames, "package.path")
}else{
        terraAddGeneralPaths(modulenames, "package.terrapath")
    }
}

##' Updates a search path
##' @param paths a vector of paths to load
##' @param whatpath exampls are package.path or package.cpath
##' @return throws an error upon failure
##' ##' @seealso \code{\link{terraAddIncludePaths}},\code{\link{terraLinkLibrary}},,\code{\link{terraAddGeneralPaths}}
##' @export
terraAddGeneralPaths <- function(modulenames,whatpath){
    for(i in modulenames){
        res <- terraStr(sprintf('%s=  "%s;" .. %s', whatpath,i,whatpath))
    }
}
##' Adds libraries to the terra system
##' @param libs a vector of libraries to load
##' @return an error upon failure
##' @details You dont need to specify the full path name to the
##' library assuming the path is ldconf/LD_LIBRARY_LOAD. If not
##' specify the full path name
##' @seealso \code{\link{terraAddIncludePaths}},\code{\link{terraAddRequirePaths}},\code{\link{processCppFlags}} and \code{\link{processLibFlags}}
##' @export 
terraLinkLibrary <- function(libs){
  for(i in libs){
    res <- terraStr(sprintf('terralib.linklibrary("%s")',i))
  }
}

F <- function(s) gsub(" +","",s)
.processCppFlags <- function(s){
  (unique(list.dirs( F(strsplit(s,"-I")[[1]][-1]))))
}
##' Extract C include paths
##' helper function to add libraries to terra given a string output from pkg-config and it's likes
##' @param cppflags the output of R CMD config --cppflags or pkg-config -cflags
##' @return a character vector of include paths
##' @export 
processCppFlags <- function(cppflags){
  unique(unlist(sapply(cppflags, .processCppFlags)))
}

.processLibFlags <- function(l){
  v1 <-  F(strsplit(strsplit(l," ")[[1]],"-l"))
  a <- unlist(lapply(v1,function(i){
    if(length(i)>=2){
      sprintf("lib%s.so",i[[2]])
    }
}));
  a
}
##' Extract libraries from link flags
##'  helper function to add libraries to terra given a string output from pkg-config and it's likes
##' @param cppflags the output of R CMD config --lflags or pkg-config --libs.
##' @return a character vector of libraries to load
##' @details Note, -L i.e. the path to the libraries is not
##' processed. If the path is not present in LD_LIBRARY_PATH or ldconf
##' then the library will not load. To resolve this, use terraLinkLibrary with the complete path or
##' update LD_LIBRARY_PATH and/or ldconf
##' @export 
processLibFlags <- function(l)
  unique(unlist(sapply(l, .processLibFlags)))

                  
##' Add search paths
##' @param a directory root
##' @param includecd should we include the current directiory too?
##' @details Package authors can keep a 'terra' directory in the
##' 'inst' folder of their package. Then call
##' terraAddLookupPaths(system.file("terra", package=PACKAGE_NAME))
##' @export
terraAddLookupPaths <- function(path,packagename,includecd=TRUE){
    terraAddRequirePaths(paste(path,c("?.lua","?/init.lua"),sep="/",collapse=";"))
    terraAddRequirePaths(paste(path,c("?.t","?/init.t"),sep="/",collapse=";"))
    terraAddGeneralPaths(paste(path,"?.so",sep="/",collapse=";"),"package.cpath")
    if(includecd){
        terraAddRequirePaths(sprintf("%s/?.lua",getwd()))
        terraAddRequirePaths(sprintf("%s/?.t",getwd()))
        terraAddGeneralPaths(paste(getwd(),"?.so",sep="/",collapse=";"),"package.cpath")
    }
    terraStr(sprintf("Rbase.cincludesearchpath['%s'] = '%s'", packagename, path[1]))
}

