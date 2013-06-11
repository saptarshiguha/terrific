fns <- sapply(1:5,function(a) sprintf("doTerraFunc%s",a))

init <- function(){
  ## Sys.setenv(INCLUDE_PATH=strsplit(system("R CMD config --cppflags",intern=TRUE),"-I")[[1]][[2]])
  Sys.setenv(INCLUDE_PATH="/usr/share/R/include;/usr/share/R/include/R_ext;./")
  dyn.load("a.so")
  .Call("initTerrific",NULL)
}
doTerraFile <- function(p){
  x <- .Call("terraDoFile",p)
  if(is.character(x)) stop(sprintf("Terrific Error: %s",x)) else x
}
doTerra <- function(f,...){
  l <- list(...)
  .Call(fns[length(l)],f,...)
}



init()
doTerraFile("/home/sguha/mystuff/programming/terra/tbase3.t")
doTerra("initialize_terra", list(NULL,NA_integer_,NaN,NA_real_,Inf,.GlobalEnv,baseenv(),emptyenv(),NA_character_))
x <- runif(10)
x <- c(2+3i, 4+5i)
x=c('one','two')
print("I am sending")
print(x)
print("I am receiving")
print(doTerra("testOne",x))
