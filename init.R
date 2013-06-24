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

mySocialClub <- function(n) cat(sprintf("the number you called is %s",n))

init()
doTerraFile("/home/sguha/mystuff/programming/terrific/tbase3.t")

## doTerra("initialize_terra", list(NULL,NA_integer_,NaN,NA_real_,Inf,.GlobalEnv,baseenv(),emptyenv(),NA_character_))
## x <- runif(10)
## x <- c(2+3i, 4+5i)
## x=c('one','two')
## print("I am sending")
## print(x)
## print("I am receiving")
## print(doTerra("testOne",x))
## x <- matrix(as.numeric(1:10),ncol=2)
## print(x)
## a=doTerra("MuFunction",x)
## print(x)

## x <- matrix(as.numeric(1:10),ncol=2)
## print(x)
## a=.Call("doSetN",x)
## print(x)

N <- 10000
M <- 10000
iN <- 1:N
iM <- 1:M

x <- matrix(as.numeric(1:(N*M)),ncol=N)
gc()
system.time(.Call("doSetN",x))

x <- matrix(as.numeric(1:(N*M)),ncol=N)
gc()
system.time(doTerra("MuFunction",x))

x <- matrix(as.numeric(1:(N*M)),ncol=N)
gc()
system.time(doTerra("tMuFunction",x))

x <- matrix(as.numeric(1:(N*M)),ncol=N)
gc()
system.time({
  for(i in iN){
    for(j in iM){
      x[i,j] <- 0
    }
  }
})



