library(RGraphicsDevice)


myDevice =function(dim = c(800, 1000))
{
  dev = new("RDevDescMethods")
  dim = as.integer(dim)
  collector <- list()
  Print <- function(a){
    if(a[[1]] == "newpage")
      collector[[ length(collector)+1 ]] <<- list()
    else{
      if(class(a)!='list'  ) stop("Must gie list")
      if(length(collector)==0) collector <<- list()
      v <- collector[[ length(collector) ]]
      collector[[ length(collector) ]][[ length(v)+1 ]] <<- a
    }
  }
  dev@newPage <- function(gcontext,dev){
    x <- list("newpage")
    Print(x)
  }
  dev@activate = function(dev){
    x <- list("activate")
    ## Print(x)
  }
  dev@line = function(x1, y1, x2, y2, gcontext, dev) {
    x <- list("line",x1, y1, x2, y2)
    Print(x)
  }

  dev@circle = function(x, y, r, gcontext, dev) {
    x=list("circle", x, y, r)
    Print(x)
  }

  dev@rect = function(x, y, w, h, gcontext, dev) {
    x=list("rect", x,  y,  w, h)
    Print(x)
  }

  dev@polygon = function(n, x, y, gcontext, dev) {
    x = x[1:n]
    y = y[1:n]    
    x <- list("poly",x,y)
    Print(x)
  }

  dev@polyline = function(n, x, y, gcontext, dev) {
    x = x[1:n]
    y = y[1:n]    
    x = list("polyline", x,y)
    Print(x)
  }  

  dev@text = function(x, y, str, rot, hadj, gcontext, dev) {
    x=list("text", str, x,y,rot)
    Print(x)
  }

  dev@strWidth = function(str, gcontext, dev) {
    x <- list("strWidth",str, gcontext$ps, gcontext$cex)
    ## print(nchar(str) *  min(10, gcontext $ ps) * gcontext$cex)
    Print(x)
  }
  
  dev@close = function(dev) {
    x <- list("close")
    ## Print(x)
  }

  dev@initDevice = function(dev) {
    dev$ipr = rep(1/72.27, 2)
    dev$cra = rep(c(6, 13)/12) * 10
    dev$startps = 10
    dev$canClip = TRUE
    dev$canChangeGamma = TRUE
    dev$startgamma = 1 
    dev$startcol = as("red", "RGBInt")
    collector<<- list()
  }

  latestPlot <- function() return(collector)
  dev = graphicsDevice(dev, dim, col = "red", fill = "transparent", ps = 10)
  list(dev,plots=latestPlot)
}

library(rterra)
tinit(clang="/opt/clang3.3/bin/clang")
library(RGraphicsDevice)
dev <- myDevice()
plot(runif(1000))
ctl <- dev$plots()
terraFile(system.file("examples","rqt.t",package="rterra"))
terra("qtinit",table="rqt")
terraFile(system.file("device","runner.t",package="rterra"))
terra("plotData3",ctl[[1]])
