terralib.require("base")
R.SEXP = &Rbase.SEXPREC
R.print = Rbase.Rf_PrintValue
R.isNA = Rbase.R_IsNA
R.isFinite = Rbase.R_finite
R.type = Rbase.type
if Rbase.isnan then
   R.isNaN = Rbase.isnan
else
   R.isNan = Rbase.R_isnancpp
end
R.Complex = Rbase.Rcomplex
R.Complex:complete()
R.constants = terralib.new(Rbase._RConstants)
Rbase.getConstants(R.constants)

terra R.Complex:abs()
   return cmath.sqrt(self.r*self.r+self.i*self.i)
end

terra R.release(x:R.SEXP)
   Rbase.R_ReleaseObject(x)
end

terra R.preserve(x:R.SEXP)
   Rbase.R_PreserveObject(x)
end

for a,b in pairs({ {"NilValue"},{"NaSTRING"},{"GlobalEnv"},{"EmptyEnv"},{"BaseEnv"},{"UnboundValue"},
		   {"NaN",double},{"PosInf",double},{"NegInf",double}, {"NaREAL",double},
		   {"NaINTEGER",int}, {"NaLOGICAL", int}}) do
   local fn = b[1]
   local s
   s = symbol(b[2] or R.SEXP, "argument")
   R[ "is" .. fn] = terra([s])
      return([s] == R.constants.[fn])
   end
end

-- creates a callable R function (see below)
function R.makeRFunction(fname, len,namespace)
   local nspace
   if not namespace == nil then
      local z1 = Rbase.Rf_ScalarString(Rinternals.Rf_mkChar(namespace))
      local z2 = Rbase.Rf_lang2(Rinternals.Rf_install("getNamespace"),z1)
      nspace = Rbase.Rf_eval(z2,R.constants.GlobalEnv)
   else
      nspace = R.constants.GlobalEnv
   end
   local langcall = Rbase["Rf_lang" .. (len+1)]
   local fncall  = Rbase.Rf_install(fname)
   local params = {}
   for i = 1,len do
      params[i] = symbol(R.SEXP,"argument" ..i)
   end
   return
      terra([params])
         var result = Rbase.Rf_eval( langcall( fncall, [params]), nspace)
   	 ffi.gc(result,R.release)
   	 R.preserve(result)
   	 return result
      end
end

-- these are package namespaces, not environments
local getNamespace = R.makeRFunction("getNamespace",1,nil)
R.getNamespace  = terra(name : &int8)
   return getNamespace(Rbase.Rf_ScalarString(Rbase.Rf_mkChar(name)))
end

terra R.makeXtnlPtr(data : &uint8, finalizer: R.SEXP -> {} ,info: R.SEXP)
   var a = Rbase.R_MakeExternalPtr(data,R.constants.NilValue,info)
   Rbase.Rf_protect(a)
   Rbase.R_RegisterCFinalizerEx(a, finalizer, 1);
   Rbase.Rf_unprotect(1)
   return a
end
terra R.makeXtnlPtr(data : &uint8, finalizer: R.SEXP -> {})
   return R.makeXtnlPtr(data, finalizer, nil)
end
R.XtnlPtr = R.R_ExternalPtrAddr

terra R.defineVariable(name :&int8, value:R.SEXP,  namespace:R.SEXP)
   Rbase.Rf_defineVar(Rbase.Rf_install(name),value,namespace)
end
terra R.defineVariable(name :&int8, value:R.SEXP)
   Rbase.Rf_defineVar(Rbase.Rf_install(name),value,R.constants.GlobalEnv)
end

terra R.findVariable(name :&int8,env : R.SEXP)
   var res = Rbase.Rf_findVar( Rbase.Rf_install(name),env)
   if  res == R.constants.UnboundValue then
      return nil
   end
   if R.type(res) == R.types.PROMSXP then
      res = Rbase.Rf_eval(res, env)
   end
   return res
end
terra R.findVariable(name :&int8)
   return R.findVariable(name, R.constants.GlobalEnv)
end

-- Wrappers around the above to make this now Lua-esque
local asEnvironment = nil
struct asEnvironment
{
   __env : R.SEXP;
}
local emt =  {
   __index =  function(tabl, key)
      return(R.findVariable(key,tabl.__env))
   end,
   __newindex =  function(tabl, key, value)
      R.defineVariable(key,value,tabl.__env)
   end,
   __new = function(ct,p)
      if p == nil then
	 return terralib.new(asEnvironment,R.constants.GlobalEnv)
      else
	  return terralib.new(asEnvironment, p)
      end
   end
}
R.asEnvironment = ffi.metatype(asEnvironment:cstring(),emt)

-- Generate Code for INTEGER, DOUBLE, COMPLEX, LOGICAL
-- for a in simpletypes do
local t = {}
local a = { {name = "Integer",rtype = R.types.INTSXP,ptr = Rbase.INTEGER, ctype  = int},
	    {name = "Real",rtype = R.types.REALSXP,ptr = Rbase.REAL, ctype  = double},
	    {name = "Complex",rtype = R.types.CPLXSXP,ptr = Rbase.COMPLEX, ctype  = R.Complex},
	    {name = "Logical",rtype = R.types.LGLSXP,ptr = Rbase.LOGICAL, ctype  = int},
	    {name = "Raw",rtype = R.types.RAWSXP,ptr = Rbase.RAW, ctype  = uint8}, 
}
for _,ty in pairs(a) do
   t[ "Array" .. ty.name ] = terralib.types.newstruct( "Array" .. ty.name  )
   t[ "Array" .. ty.name ].entries:insert{ field = "sexp", type = R.SEXP }
   t[ "Array" .. ty.name ].entries:insert{ field = "ptr", type = &ty.ctype }
   t[ "Array" .. ty.name ].entries:insert{ field = "length", type = int }
   t[ "Array" .. ty.name ]:complete()
   local emt =  {
      __new = function(ct,...)
	 local args = ...
	 local fromSexp = args.fromSexp or false
	 local fromOther = args.fromOther or false
	 local copy = args.copy or false
	 local length = args.length or 0
	 local init = args.init or {}
	 -- case when we want an unitialized vector of a given length
	 if length >0 then
	    local sexp =  Rbase.Rf_allocVector( ty.rtype, length)
	    local w  = terralib.new( t[ "Array" .. ty.name ], sexp, ty.ptr(sexp), length)
	    ffi.gc(w.sexp,R.release)
	    R.preserve(w.sexp)
	    return w
	 end
	 if #init >0 then
	    local sexp =  Rbase.Rf_allocVector( ty.rtype, #init)
	    local w  = terralib.new( t[ "Array" .. ty.name ], sexp, ty.ptr(sexp), #init)
	    ffi.gc(w.sexp,R.release)
	    R.preserve(w.sexp)
	    for i=1,#init do
	       w.ptr[i-1] = init[i]
	    end
	    return w
	 end
      end
   }
   R[ "new" .. ty.name ] = ffi.metatype( t[ "Array" .. ty.name ]:cstring(),emt)
end


   
-- Generate Code for STRING, VECTOR

-- Wrappers for asMatrix, asDataFrame
