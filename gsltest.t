terralib.require("typesandfunctions")



gsl = terralib.includecstring [[
#include <gsl/gsl_rng.h>
#include <gsl/gsl_randist.h>
const gsl_rng_type *gsl_rng_mt19937;
const gsl_rng_type* get_mt19937();
]]

terralib.linklibrary("/usr/lib/libgsl.so")
terralib.linklibrary("gibstest.so")

terra initgsl_rng()
   var rng = gsl.gsl_rng_alloc([&gsl.gsl_rng_type] (gsl.get_mt19937()))
   return rng
end
terra freegsl_rng(r : &gsl.gsl_rng )
   gsl.gsl_rng_free(r)
end

function doGibbsJIT(p)
   local p1 = R.newInteger{fromSexp = p}
   local N,thin = p1[0], p1[1]
   local r = R.newReal{length = N*2}
   local mr = R.asMatrix(r, {N,2})
   local rng =  initgsl_rng()
   for i=0,N-1 do
      for j=0, thin-1 do
   	 local x,y = 0.0,0.0
   	 x=gsl.gsl_ran_gamma(rng,3.0,1.0/(y*y+4));
   	 y=1.0/(x+1)+gsl.gsl_ran_gaussian(rng,1.0/cmath.sqrt(2*x+2))
   	 mr[{i,0}],mr[{i,1}] = x,y
      end
   end
   freegsl_rng(rng)
   return r
end


--- Terra Version

GSL_RNG_INIT = function(rng)
   return( quote
	      rng = gsl.gsl_rng_alloc([&gsl.gsl_rng_type] (gsl.get_mt19937()))
	      ffi.gc(rng,gsl.gsl_rng_free)
	      end)
end

   
terra _doGibbsTerra(r:&double, N:int, thin:int )
   var rng : &gsl.gsl_rng = nil
   [GSL_RNG_INIT(rng)]
   for i=0,N do
      for j=0, thin do
	 var x,y = 0.0,0.0
	 x=gsl.gsl_ran_gamma(rng,3.0,1.0/(y*y+4));
	 y=1.0/(x+1)+gsl.gsl_ran_gaussian(rng,1.0/cmath.sqrt(2*x+2))
	 r[i ],r[i+N] =  x,y
      end
   end
end

_doGibbsTerra:compile()
function doGibbsTerra(p)
   local p1 = R.newInteger{fromSexp = p}
   local N,thin = p1[0], p1[1]
   local r = R.newReal{length = N*2}
   _doGibbsTerra( r.ptr, N,thin)
   return r
end

terralib.includepath = terralib.includepath .. ";/usr/include/glib-2.0;/usr/lib/x86_64-linux-gnu/glib-2.0/include"
glib = terralib.includec("glib-2.0/glib.h")
terralib.linklibrary("libglib-2.0.so")
terralib.linklibrary("libgthread-2.0.so")
terralib.linklibrary("librt.so")

local struct A {
   N: int;
   thin: int;
   r:&double;
	       }
terra _driver(data:glib.gpointer, userdata:glib.gpointer) : {}
   var ud  = [&A](userdata)
   var i = @([&int](data))
   var r = ud.r
   var N = ud.N
   var thin = ud.thin
   
   var rng = gsl.gsl_rng_alloc([&gsl.gsl_rng_type] (gsl.get_mt19937()))
   for j=0, thin do
      var x,y = 0.0,0.0
      x=gsl.gsl_ran_gamma(rng,3.0,1.0/(y*y+4));
      y=1.0/(x+1)+gsl.gsl_ran_gaussian(rng,1.0/cmath.sqrt(2*x+2))
      r[ i ],r[i+N] =  x,y
   end
   gsl.gsl_rng_free(rng)
end
_driver:compile()

terra _doGibbsTerra1(r:&double, N:int, thin:int ,numthreads:int)
   var p = { N = N, thin=thin, r=r}
   var threadpool = glib.g_thread_pool_new(_driver,&p,numthreads,0,nil)
   glib.g_thread_pool_set_max_threads(threadpool, numthreads, nil)
   var integers = [&int](stdlib.malloc(sizeof(int)*N))
   for i=0,N do
      integers[i] = i
      glib.g_thread_pool_push(threadpool,integers+i,nil)
   end
   glib.g_thread_pool_free (threadpool,0,1)
end
_doGibbsTerra1:compile()
function doGibbsTerraParallel(p,nt)
   local p1 = R.newInteger{fromSexp = p}
   local N,thin = p1[0], p1[1]
   local r = R.newReal{length = N*2}
   _doGibbsTerra1( r.ptr, N,thin, R.newInteger{fromSexp=nt}[0])
   return r
end



