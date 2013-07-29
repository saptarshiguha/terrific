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

  dev@mode = NULL
  dev@metricInfo = NULL
  dev@activate = NULL
  dev@deactivate = NULL
  dev@deactivate = NULL
  dev@locator = NULL
  dev@onExit = NULL
  
  dev@newPage <- function(gcontext,dev){
    x <- list("newpage")
    Print(x)
  }
  dev@activate = function(dev){
    x <- list("activate")
    ## Print(x)
  }
  dev@line = function(x1, y1, x2, y2, gcontext, dev) {
    ## done
    x <- list("line",x1, y1, x2, y2)
    Print(x)
  }

  dev@circle = function(x, y, r, gcontext, dev) {
    ## done
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
    ## done
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

  dev@size = function(left,right,bottom,top,dev){
    left[1] = 0
    right[1] = dev$right
    bottom[1] = dev$bottom
    top[1] = dev$right
  }
  
  dev@initDevice = function(dev) {
    dev$ipr = rep(1/72.27, 2)
    dev$cra = rep(c(6, 13)/12) * 10
    dev$startps = 10
    dev$canClip = TRUE
    dev$canChangeGamma = TRUE
    dev$startgamma = 1
    dev$startcol = as("black", "RGBInt")
    collector<<- list()
  }

  latestPlot <- function() return(collector)
  dev2 = graphicsDevice(dev, dim, col = "red", fill = "transparent", ps = 10)
  dev2$ipr = rep(1/72.27, 2)
  dev2$cra = rep(c(6, 13)/12) * 10
  list(dev2,plots=latestPlot)
}

library(rterra)
tinit(clang="/opt/clang3.3/bin/clang")
library(RGraphicsDevice)

terraFile(system.file("examples","rqt.t",package="rterra"))
terra("qtinit",table="rqt")
terraFile(system.file("device","runner.t",package="rterra"))

dev <- myDevice()
plot(runif(1000),type='p')
ctl <- dev$plots()

terra("plotData3",ctl[[1]])


## library(lattice)
## dev <- myDevice()
## v <- data.frame(la=sample(letters[1:5],100,replace=TRUE), y=runif(100))
## v$z <- v$y+rnorm(100,mean=0.5)
## xyplot( y ~ z|la, data=v, type='p', panel=function(x,y,...){
##   panel.grid()
##   panel.xyplot(x,y)
##   panel.loess(x,y,col='red')
## })
## ctl <- dev$plots()
## terra("plotData3",ctl[[1]])
