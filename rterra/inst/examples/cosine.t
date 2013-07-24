require'io'
require'jit.dump'
require'jit.v'

if dotrace=='yes' then
   jit.v.start()
   jit.dump.start()
end

doCosineL = nil
function doCosineL(mat0)
   local mat = R.asMatrix(R.Robj(mat0))
   local retval = R.Robj{type='real',length = mat.nrows*mat.nrows}
   retval['dim']= R.Robj{type='int',with = {mat.nrows, mat.nrows}}
   local rm  = R.asMatrix(retval)
   for row1 = 0, mat.nrows-1 do
      for row2=0, mat.nrows-1 do
	 local s,a1,a2 = 0.0, 0.0,0.0
	 for i=0, mat.ncols-1 do
	    s = s + mat[ {row1,i} ] * mat[ {row2,i} ]
	    a1 = a1 +  mat[ {row1,i} ]^2
	    a2 = a2 +  mat[ {row2,i} ]^2
	 end
	 rm[ {row1,row2} ] = s / (cmath.sqrt(a1*a2))
      end
   end
   return retval
end

doCosineT=nil
local sqrt = terralib.intrinsic("llvm.sqrt.f64",double ->double)
-- local sqrt = cmath.sqrt
terra doCosineT(a : R.SEXP)
   var a1 = Rt.newReal(a,false)
   var mat = a1:asMatrixDouble()
   var rm = Rt.newReal(mat.nrows*mat.nrows)
   var rmmat =rm:asMatrixDouble(mat.nrows,mat.nrows)
   for row1 =0, mat.nrows do
      for row2=0, mat.nrows do
   	 var s,a1,a2 = 0.0,0.0,0.0
   	 for i=0, mat.ncols do
   	    s = s + mat:get( row1,i ) * mat:get(row2,i)
   	    a1 = a1 + cmath.pow(mat:get(row1,i),2.0)
   	    a2 = a2 + cmath.pow(mat:get(row2,i),2.0)
         end
   	 rmmat:set(row1,row2, s /(sqrt(a1*a2)))
      end
   end
   return rm
end
doCosineT:compile()
-- doCosineT:getdefinitions()[1]:printpretty()
-- doCosineT:disas()




-- if(grepl("ajgubi",system("hostname",intern=TRUE))){
--   tinit(clang="/opt/clang+llvm-3.3-Ubuntu-13.04-x86_64-linux-gnu/bin/clang")
--   terraStr('terralib.includepath = terralib.includepath .. ";/usr/include/glib-2.0;/usr/lib/x86_64-linux-gnu/glib-2.0/include"')
--   terraFile(normalizePath("~/mz/fhr/cosine.lua"))
-- }else{
--   tinit()
--   terraStr('terralib.includepath = terralib.includepath .. ";/usr/local/include/glib-2.0;/usr/local/lib/glib-2.0/include"') ##use pkg-config glib-2.0
--   terraFile(normalizePath("~/tmp/cosine.lua"))
-- }

glib = terralib.includec("glib-2.0/glib.h")
terralib.linklibrary("libglib-2.0.so")
terralib.linklibrary("libgthread-2.0.so")
terralib.linklibrary("librt.so")
local struct A
{
   mat : Rt.MatrixDouble;
   rmmat : Rt.MatrixDouble;
}
terra _driver(data:glib.gpointer, userdata:glib.gpointer):{}
   var matrices = @([&A](userdata))
   var mat, rmmat= (matrices.mat), (matrices.rmmat)
   var row1 = @([&int](data))
   for row2=0, mat.nrows do
      var s,a1,a2 = 0.0,0.0,0.0
      for i=0, mat.ncols do
   	 s = s + mat:get( row1,i ) * mat:get(row2,i)
   	 a1 = a1 + cmath.pow(mat:get(row1,i),2.0)
   	 a2 = a2 + cmath.pow(mat:get(row2,i),2.0)
      end
      rmmat:set(row1,row2, s / (sqrt(a1*a2)))
   end
end
_driver:compile()
terra doCosineP(a : R.SEXP,t:R.SEXP)
   var a1 = Rt.newReal(a,false)
   var mat = a1:asMatrixDouble()
   var rm = Rt.newReal(mat.nrows*mat.nrows)
   var rmmat =rm:asMatrixDouble(mat.nrows,mat.nrows)
   var p ={mat= mat, rmmat=rmmat}
   var threadpool = glib.g_thread_pool_new(_driver,&p,Rbase.INTEGER(t)[0],0,nil)
   var rowIDs = [&int](stdlib.malloc(sizeof(int)*mat.nrows))
   for row1 =0, mat.nrows do
      rowIDs[row1] = row1
      glib.g_thread_pool_push(threadpool,rowIDs+row1,nil)
   end
   glib.g_thread_pool_free (threadpool,0,1)
   return rm
end
doCosineP:compile()


-- function makeVector(vec)
--    local p ={}
--    for i = 1, tonumber(vec.object) do
--       p[i] = terralib.cast(double,0.0)
--    end
--    return 
--       `vectorof(double,p)
-- end

-- Not worth it
-- doCosineTV = nil
-- terra doCosineTV(a : R.SEXP)
--    var a1 = Rt.newReal(a,false)
--    var mat = a1:asMatrixDouble()
--    var rm = Rt.newReal(mat.nrows*mat.nrows)
--    var rmmat =rm:asMatrixDouble(mat.nrows,mat.nrows)
--    var regularpart = mat.ncols and (-vecsize)
--    var sacc   : vector(double, vecsizel)
--    var a1acc  : vector(double, vecsizel)
--    var a2acc  : vector(double, vecsizel)
--    for row1 =0, mat.nrows do
--       for row2=0, mat.nrows do
--          sacc,a1acc,a2acc = 0.0,0.0,0.0
--          for i=0, regularpart,vecsize do
--             var s0  : double[vecsizel], a10: double[vecsizel], a20:double[vecsizel]
--             for inside = 0, vecsize do
--                s0[inside]  = mat:get( row1,i+inside ) * mat:get(row2,i+inside)
--                a10[inside] = cmath.pow(mat:get(row1,i+inside),2.0)
--                a20[inside] = cmath.pow(mat:get(row2,i+inside),2.0)
--             end
--             sacc = sacc+ @[&vector(double,vecsizel)](&s0)
--             a1acc = a1acc +@[&vector(double,vecsizel)](&a10)
--             a2acc = a2acc +@[&vector(double,vecsizel)](&a20)
--          end
--          -- Add the rest
--          var srest,a1rest,a2rest = 0.0,0.0,0.0
--          for i=regularpart, mat.ncols do
--             srest = srest + mat:get( row1,i ) * mat:get(row2,i)
--             a1rest = a1rest + cmath.pow(mat:get(row1,i),2.0)
--             a2rest = a2rest + cmath.pow(mat:get(row2,i),2.0)
--          end
--          for i =0, vecsize do
--             srest = srest + sacc[i]
--             a1rest = a1rest + a1acc[i]
--             a2rest = a2rest + a2acc[i]
--          end
--          rmmat:set(row1,row2, srest / (sqrt(a1rest)*sqrt(a2rest)))
--       end
--    end
--    return rm
-- end
-- doCosineTV:compile()




