library(rterra)
tinit(clang="/opt/clang3.3/bin/clang")

a <- as.integer((c(50000,300)))
dyn.load(normalizePath("gibstest.so"))
invisible(gc())

R <- 10

resC <- replicate(R,{invisible(gc);system.time(.Call("doGibbs",a))})["elapsed",]


terraStr(sprintf('terralib.linklibrary("%s")',normalizePath("gibstest.so")))
terraFile(normalizePath("gsltest.t"))

invisible(gc())
resLuaJIT <- replicate(R,{invisible(gc);system.time(.Call("doTerraFunc1","doGibbsJIT",NULL,a))})["elapsed",]

invisible(gc())
resTerra <- replicate(R,{invisible(gc);system.time(.Call("doTerraFunc1","doGibbsTerra",NULL,a))})["elapsed",]
cat(".Call to Terra code\n")
print(res)

invisible(gc())
resTerraP <- replicate(R,{invisible(gc);system.time(.Call("doTerraFunc2","doGibbsTerraParallel",NULL,a,2L))})["elapsed",]

library(lattice)
j <- do.call(rbind,lapply(list("resC","resLuaJIT","resTerra","resTerraP"),function(a){
  b <- get(a)
  data.frame(type=a, time=b)
}))
bwplot( type ~ time, data=j, xlab='time(sec)', ylab='method',scale=list(x=list(tick.number=20)))
