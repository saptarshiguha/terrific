library(rterra)
tinit()
terraFile(system.file("exampes","tests.t",package="rterra"))

cat("Tests Start Now\n")
#### Environment Test
## myNS = new.env()
## myNS$foo = 1.234
## foo=2.45
## doTerra("testNameSpace",myNS)
## print(list(myNS$foo, foo))


## ## IntegerVector Test
## a1 <- doTerra("makeIntegerVector")
## cat("intvector\n")
## print(a1)

## ## IntegerVector2 Test
## x <- 1:5
## doTerra("makeIntegerVector2",x)
## cat("intvector\n")
## print(x)

## ## Integer With Attributes
## x <- structure(1:5,foo="superman")
## y=as.character(1:4)
## doTerra("intVectorWithAttr",x,y)
## print(x)


## ## Matrix Test
## y= matrix(as.numeric(1:10),ncol=2)
## print(y)
## doTerra("matrixTest",y)


## ## vector creation
## doTerra("createVector")

## ######################
## gibbs sampling tests
## ######################

## a <- as.integer((c(50000,500)))
## dyn.load(normalizePath("gibstest.so"))
## invisible(gc())

## res <- system.time(.Call("doGibbs",a))
## cat(".Call to C code\n")
## print(res)

## doTerraString(sprintf('terralib.linklibrary("%s")',normalizePath("gibstest.so")))
## doTerraFile(normalizePath("gsltest.t"))

## invisible(gc())
## res <- system.time(.Call("doTerraFunc1","doGibbsJIT",NULL,a))
## cat(".Call to JITted code\n")
## print(res)

## invisible(gc())
## res <- system.time(.Call("doTerraFunc1","doGibbsTerra",NULL,as.integer(c(100,10))));invisible(gc())
## res <- system.time(.Call("doTerraFunc1","doGibbsTerra",NULL,a))
## cat(".Call to Terra code\n")
## print(res)


## res <- system.time(.Call("doTerraFunc2","doGibbsTerraParallel",NULL,a,as.integer(5)))
## cat(".Call to Terra Parallel code\n")
## print(res)

## invisible(gc())


## ########################
## Test QT
## ########################
terraFile(system.file("examples","qt.initialize.terra",package="rterra"))
terra("qtinit")
terraFile(system.file("examples","example.window.qt.lua",package="rterra"))

doTerraFile(normalizePath("example.window.qt.lua"))
a <- terra("doTest2",NULL)
