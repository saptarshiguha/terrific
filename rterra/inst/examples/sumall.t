sumall = nil
terra sumall(a : R.SEXP)
   var a1 = Rt.newReal(a,false)
   -- var skip = [uint32](a1.ptr)  and (- 16)
   -- stdio.printf("Will this crash?%p -->%d\n", a1.ptr,skip)
   var regularpart = a1.length and (- [vecsizel])
   var sacc   : vector(double, vecsizel) = 0.0
   for row1 =0, regularpart,[vecsizel]  do
      var t1 = terralib.attrload([&vector(double,vecsizel)]( a1.ptr + row1),{ align = vecsizel })
      sacc = sacc+ t1
   end
   var srest = 0.0
   for i=regularpart, a1.length do
      srest = srest + a1:get( i)
   end
   for i =0, [vecsizel] do
      srest = srest + sacc[i]
   end
   return Rt.newScalarReal(srest)
end
sumall:compile()


uvsumall = nil
terra uvsumall(a : R.SEXP)
   var a1 = Rt.newReal(a,false)
   var s = 0.0
   for i=0,a1.length do
      s = s+ a1:get(i)
   end
   return Rt.newScalarReal(s)
end
uvsumall:compile()

wsum = nil
function fillLoop(a,holder,data, weights)
   local instr = terralib.newlist()
   for i=0, a-1 do
      instr:insert(quote
		      [holder][i] = [weights][i] * [data][i]
		      end)
   end
   return instr
end

terra wsum(a : R.SEXP,w:R.SEXP)
   var a1 = Rt.newReal(a,false)
   var w1 = Rt.newReal(w,false)
   var regular = w1.length and (- [vecsizel])
   var wacc   : vector(double, vecsizel) = 0.0
   var sacc   : vector(double, vecsizel) = 0.0
   for index =0, regular,[vecsizel]  do
      var t1 = terralib.attrload([&vector(double,vecsizel)]( w1.ptr + index),{ align = 8 })
      var t2 = terralib.attrload([&vector(double,vecsizel)]( a1.ptr + index),{ align = 8 })
      wacc = wacc + t1
      sacc = sacc + t1*t2
   end
   var wrest ,srest = 0.0,0.0
   for i=regular, w1.length do
      wrest = wrest + w1:get(i)
      srest = srest + w1:get(i)*a1:get(i)
   end
   for i =0, [vecsizel] do
      wrest = wrest + wacc[i]
      srest = srest + sacc[i]
   end
   return Rt.newScalarReal(srest/wrest)
end




terra wsum2(a : R.SEXP,w:R.SEXP)
   var a1 = Rt.newReal(a,false)
   var w1 = Rt.newReal(w,false)
   var regular = w1.length and (- 4)
   var wacc   : vector(double, 4) = 0.0
   var sacc   : vector(double, 4) = 0.0
   for index =0, regular,4  do
      var t1 = vectorof(double, w1:get(index), w1:get(index+1), w1:get(index+2), w1:get(index+3))
      var t2 = vectorof(double, a1:get(index), a1:get(index+1), a1:get(index+2), a1:get(index+3))
      wacc = wacc + t1
      sacc = sacc + t1*t2
   end
   var wrest ,srest = 0.0,0.0
   for i=regular, w1.length do
      wrest = wrest + w1:get(i)
      srest = srest + w1:get(i)*a1:get(i)
   end
   for i =0, 4 do
      wrest = wrest + wacc[i]
      srest = srest + sacc[i]
   end
   return Rt.newScalarReal(srest/wrest)
end






terra uvwsum(a : R.SEXP,w:R.SEXP)
   var a1 = Rt.newReal(a,false)
   var w1 = Rt.newReal(w,false)
   var s,ws = 0.0,0.0
   for i=0,w1.length do
      ws = ws + w1:get(i)
      s = s+ w1:get(i)*a1:get(i)
   end
   return Rt.newScalarReal(s/ws)
end
uvwsum:compile()


-- library(rterra)
-- tinit(clang="/opt/clang+llvm-3.3-Ubuntu-13.04-x86_64-linux-gnu/bin/clang")
-- terraStr("vecsizel = 4")
-- terraFile(normalizePath("./rterra/inst/examples/sumall.t"))
-- ## terraStr("sumall:printpretty()")
-- ## terraFile(normalizePath("./rterra/inst/examples/sumall.t"))

-- N = 60e6
-- a  = rnorm(N)

-- ## apply(replicate(10,system.time(.Call("doTerraFunc1","sumall",table=NULL,a))),1,mean)
-- ## apply(replicate(10,system.time(.Call("doTerraFunc1","uvsumall",table=NULL,a))),1,mean)

-- F <- function(x) x
-- b = rnorm(N)
-- w1 <- apply(replicate(20,system.time(.Call("doTerraFunc2","uvwsum",table=NULL,a,b))),1,F)
-- w2 <- apply(replicate(20,system.time(.Call("doTerraFunc2","wsum",table=NULL,a,b))),1,F)
-- w3 <- apply(replicate(20,system.time(.Call("doTerraFunc2","wsum2",table=NULL,a,b))),1,F)

-- h=data.frame(t=c(rep("novector",20),rep("vector1",20),rep('vector2',20)),y=c(w1[,'elapsed'],w2[,'elapsed'],w3[,'elapsed']))
-- library(lattice)
-- bwplot(t~y,data=h)
