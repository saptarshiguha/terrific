library(rterra)
tinit(clang="/opt/clang3.3/bin/clang")
terraFile(system.file("examples","tests.t",package="rterra"))

cat("Tests Start Now\n")
#### Environment Test
myNS = new.env()
myNS$foo = 1.234
foo=2.45
terra("testNameSpace",myNS,table="ttests")
print(list(myNS$foo, foo))


## IntegerVector Test
a1 <-terra("makeIntegerVector",table="ttests")
cat("intvector\n")
print(a1)

## ## IntegerVector2 Test
## x <- 1:5
## doTerra("makeIntegerVector2",x)
## cat("intvector\n")
## print(x)

## ## Integer With Attributes
x <- structure(1:5,foo="superman")
y <- as.character(1:4)
terra("intVectorWithAttr",x,y,table="ttests")
print(x)


## ## Matrix Test
y <- matrix(as.numeric(1:10),ncol=2)
print(y)
terra("matrixTest",y,table="ttests")


## ## vector creation
terra("createVector",table="ttests")

## ######################
## gibbs sampling tests
## ######################
library(rterra)
tinit(clang="/opt/clang3.3/bin/clang")

a <- as.integer((c(50000,300)))
dyn.load(normalizePath("gibstest.so"))
invisible(gc())

resC <- replicate(10,{invisible(gc);system.time(.Call("doGibbs",a))})["elapsed",]


terraStr(sprintf('terralib.linklibrary("%s")',normalizePath("gibstest.so")))
terraFile(normalizePath("gsltest.t"))

invisible(gc())
resLuaJIT <- replicate(10,{invisible(gc);system.time(.Call("doTerraFunc1","doGibbsJIT",NULL,a))})["elapsed",]

invisible(gc())
resTerra <- replicate(10,{invisible(gc);system.time(.Call("doTerraFunc1","doGibbsTerra",NULL,a))})["elapsed",]
cat(".Call to Terra code\n")
print(res)

invisible(gc())
resTerraP <- replicate(10,{invisible(gc);system.time(.Call("doTerraFunc2","doGibbsTerraParallel",NULL,a,2L))})["elapsed",]

library(lattice)
j <- do.call(rbind,lapply(list("resC","resLuaJIT","resTerra","resTerraP"),function(a){
  b <- get(a)
  data.frame(type=a, time=b)
}))
bwplot( type ~ time, data=j, xlab='time(sec)', ylab='method',scale=list(x=list(tick.number=20)))
## ########################
## Test QT
## ########################
terraFile(system.file("examples","qt.initialize.terra",package="rterra"))
terra("qtinit")
terraFile(system.file("examples","example.window.qt.lua",package="rterra"))

doTerraFile(normalizePath("example.window.qt.lua"))
a <- terra("doTest2",NULL)
