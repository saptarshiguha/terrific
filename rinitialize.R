fns <- sapply(0:5,function(a) sprintf("doTerraFunc%s",a))


doTerraFile <- function(p){
  x <- .Call("terraDoFile",p)
  if(is.character(x)) stop(sprintf("[Terrific Error]: %s",x)) else x
}
doTerra <- function(f,...,table=NULL){
  l <- list(...)
  .Call(fns[[length(l)+1]],f,table,...)
}
doTerraString <- function(s){
  .Call("terraDoString",s)
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

res0 <- init()
res1 <- doTerraString("terralib.require('typesandfunctions')")

## Example Tests
res2 <- doTerraFile(normalizePath("./tests.t"))

cat("Tests Start Now\n")
## Environment Test
## myNS = new.env()
## myNS$foo = 1.234
## foo=2.45
## doTerra("testNameSpace",myNS)
## print(list(myNS$foo, foo))


## IntegerVector Test
## a1 <- doTerra("makeIntegerVector")
## cat("intvector\n")
## print(a1)

## IntegerVector2 Test
## x <- 1:5
## doTerra("makeIntegerVector2",x)
## cat("intvector\n")
## print(x)

## Integer With Attributes
## x <- structure(1:5,foo="superman")
## y=as.character(1:4)
## doTerra("intVectorWithAttr",x,y)
## print(x)


## Matrix Test
## y= matrix(as.numeric(1:10),ncol=2)
## print(y)
## doTerra("matrixTest",y)


## vector creation
## doTerra("createVector")


## gibbs sampling tests
a <- as.integer((c(50000,1000)))
dyn.load(normalizePath("gibstest.so"))
invisible(gc())

## res <- system.time(.Call("doGibbs",a))
## cat(".Call to C code\n")
## print(res)

doTerraString(sprintf('terralib.linklibrary("%s")',normalizePath("gibstest.so")))
doTerraFile(normalizePath("gsltest.t"))

## invisible(gc())
## res <- system.time(.Call("doTerraFunc1","doGibbsJIT",NULL,a))
## cat(".Call to JITted code\n")
## print(res)

## invisible(gc())
## res <- system.time(.Call("doTerraFunc1","doGibbsTerra",NULL,as.integer(c(100,10))));invisible(gc())
## res <- system.time(.Call("doTerraFunc1","doGibbsTerra",NULL,a))
## cat(".Call to Terra code\n")
## print(res)


res <- system.time(.Call("doTerraFunc2","doGibbsTerraParallel",NULL,a,as.integer(1)))
cat(".Call to Terra code\n")
print(res)

## invisible(gc())
