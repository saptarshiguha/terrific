fns <- sapply(0:5,function(a) sprintf("doTerraFunc%s",a))


doTerraFile <- function(p){
  x <- .Call("terraDoFile",p)
  if(is.character(x)) stop(sprintf("[Terrific Error]: %s",x)) else x
}
doTerra <- function(f,...,table=NULL){
  l <- list(...)
  .Call(fns[[length(l)+1]],f,table,...)
}

##' @param includes is a vector of include directories
##' @param libraries path to libraries to load, rterra automaticall includes its own library
##' @return TRUE upon success, error if it fails
init <- function(includes,libraries){
  if(missing(includes))
    a1 <- paste(unique(list.dirs(strsplit(system("R CMD config --cppflags",intern=TRUE),"-I")[[1]][-1])),collapse=";")
  else
    a1 <- paste(includes,collapse=";")
  a1 <- sprintf("%s;%s;.",a1, getwd())
  Sys.setenv(INCLUDE_PATH=a1)
  dyn.load("rterra.so")
  a <- .Call("initTerrific",NULL)
  if(is.character(a)) error(sprintf("[terrific error]: %s",a))
  if(missing(libraries)){
    ## maybe works for Linux, probably not Mac ...
    v1 <-  strsplit(system("R CMD config --ldflags",intern=TRUE)," ")[[1]]
    libraries <- sprintf("%s/lib%s.so",strsplit(v1[1],"-L")[[1]][2],strsplit(v1[2],"-l")[[1]][2])
  }
  doTerraFile(normalizePath("base.t"))
  libraries <- c(libraries, normalizePath("./rterra.so"))
  .Call("initLibraryLoad",NULL,"___startit",libraries)
  TRUE
}

init()
doTerraFile(normalizePath("./typesandfunctions.t"))


## Example Tests
doTerraFile(normalizePath("./tests.t"))

## Environment Test
## myNS = new.env()
## myNS$foo = 1.234
## foo=2.45
## doTerra("testNameSpace",myNS)
## print(list(myNS$foo, foo))

cat("Tests Start Now\n")

## IntegerVector Test
## a1 <- doTerra("makeIntegerVector")
## cat("intvector\n")
## print(a1)

## IntegerVector2 Test
x <- 1:5
doTerra("makeIntegerVector2",x)
cat("intvector\n")
print(x)
