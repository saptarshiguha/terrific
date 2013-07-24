library(rterra)
tinit()
terraStr('terralib.includepath = terralib.includepath .. ";/usr/local/include/glib-2.0;/usr/local/lib/glib-2.0/include"')
terraStr("dotrace='yes'")
terraFile(system.file("examples","cosine.t",package="rterra"))


N=800;m <- matrix(as.numeric(1:N^2),ncol=N)
R = 1

tl <- data.frame(type="luajit",time=replicate(R,{
;invisible(gc());  system.time(y5dist <- terra("doCosineL",m))
})['elapsed',])

tt <- data.frame(type="terra",time=replicate(R,{
;invisible(gc());  system.time(y5dist <- terra("doCosineT",m))
})['elapsed',])

tp <- data.frame(type="pterra",time=replicate(R,{
;invisible(gc());  system.time(y5dist <- terra("doCosineP",m,10L))
})['elapsed',])


dyn.load("cosineG.so")
dyn.load("cosineL.so")

tGC <- data.frame(type="gnuC",time=replicate(R,{
;invisible(gc());  system.time(y5dist <- .Call("doCosineGL",m,dim(m)))
})['elapsed',])

tGL <- data.frame(type="clangC",time=replicate(R,{
;invisible(gc());  system.time(y5dist <- .Call("doCosineCL",m,dim(m)))
})['elapsed',])

library(lattice)
bwplot(type ~ time, data=rbind(tl,tp,tt,tGC,tGL), xlab='Time(sec)', ylab='Method', scale=list(x=list(tick.number=20)))
