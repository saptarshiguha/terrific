require("base")
local Rbase   = terralib.includecstring [[
  #include <rterra.h>
]]
function Rbase.ptable(w)   for key,value in pairs(w) do print(key,value) end end

Rbase.malloc = stdlib.malloc
Rbase.free = stdlib.free
Rbase.cincludesearchpath = {}
local  R = {}
R.types = { NILSXP              = 0, SYMSXP		= 1, LISTSXP		= 2,	
	    CLOSXP		= 3, ENVSXP		= 4, PROMSXP		= 5,	
	    LANGSXP		= 6, SPECIALSXP	        = 7, BUILTINSXP	        = 8,	
	    CHARSXP		= 9, LGLSXP		= 10, INTSXP		= 13,	
	    REALSXP		= 14, CPLXSXP		= 15, STRSXP		= 16,	
	    DOTSXP		= 17, ANYSXP		= 18, VECSXP		= 19,	
	    EXPRSXP		= 20, BCODESXP		= 21, EXTPTRSXP		= 22,	
	    WEAKREFSXP	        = 23, RAWSXP		= 24, S4SXP		= 25,	
	    NEWSXP		= 30, FREESXP		= 31, FUNSXP		= 99	
}

R.SEXP = &Rbase.SEXPREC
R.print = Rbase.Rf_PrintValue
R.isNA = Rbase.R_IsNA
R.isFinite = Rbase.R_finite
R.type = Rbase.type

R.Complex = Rbase.Rcomplex
R.Complex:complete()
R.constants = terralib.new(Rbase._RConstants)
Rbase.getConstants(R.constants)
R.__debug = false
R.isNaN = Rbase.isNaN

terra R.Complex:abs()
   return cmath.sqrt(self.r*self.r+self.i*self.i)
end

terra R.release(x:R.SEXP)
   Rbase.R_ReleaseObject(x)
end
R.release:compile()
terra R.preserve(x:R.SEXP)
   Rbase.R_PreserveObject(x)
end
R.preserve:compile()

-- terra R.releaseInternal(x:&opaque)
-- -- this is wrong, since x is a Rt.* type
--    var b = [R.SEXP](x)
--    if R.__debug  then
--       R.print(b)
--       stdio.printf("Releasing Object %p [%d]\n", x, Rbase.TYPEOF(b))
--    end
--    Rbase.R_ReleaseObject(b)
-- end
-- R.releaseInternal:compile()

function R.releaseInternal(s)
   if R.__debug then
      stdio.printf("\tReleasing SEXP %p [%d]\n", s.sexp, Rbase.TYPEOF(s.sexp))
   end
   Rbase.R_ReleaseObject(s.sexp)
   -- Rbase.Rf_unprotect(1)
end 
function R.autoProtect(o)
   if R.__debug then
      stdio.printf("Protecting SEXP %p[%d]\n",o.sexp,Rbase.TYPEOF(o.sexp))
   end
   -- Rbase.Rf_protect(o.sexp)
   Rbase.R_PreserveObject(o.sexp)
   ffi.gc(o, R.releaseInternal)
   return(o)
end
-- R.protectMe=R.lprotect
R.protectMe = function(o)
   Rbase.R_PreserveObject(o.sexp)
end
R.unprotectMe = function(n)
   -- n = n or 1
   -- if type(n) ~= 'number' then
   --    error('unprotectMe requires a number')
   -- end
   -- Rbase.Rf_unprotect(n)
   Rbase.R_ReleaseObject(n.sexp)
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
      nspace = terralib.constant(Rbase.Rf_eval(z2,R.constants.GlobalEnv))
   else
      nspace = terralib.constant(R.constants.GlobalEnv)
   end
   local langcall = Rbase["Rf_lang" .. (len+1)]
   local fncall
   if type(fname)=="string" then
      fncall = terralib.constant(Rbase.Rf_install(fname))
   elseif  Rbase.TYPEOF(fname) == R.types.FUNSXP then
      fncall = terralib.constant(fname)
   else
      Rbase.Rf_error("What type of function did you give me?")
   end
   local params = {}
   for i = 1,len do
      params[i] = symbol(R.SEXP,"argument" ..i)
   end
   return
      terra([params])
         var result = Rbase.Rf_eval( langcall( fncall, [params]), nspace)
   	 return result
      end
end

-- these are package namespaces, not environments
local getNamespace = R.makeRFunction("getNamespace",1,nil)
R.getNamespace  = terra(name : &int8)
   return getNamespace(Rbase.Rf_ScalarString(Rbase.Rf_mkChar(name)))
end

terra R.evalStr(q : &int8): R.SEXP
   return Rbase.rexpress(q)
end
R.evalStr:compile()

R.duplicateObject = Rbase.Rf_duplicate

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
R.defineVariable:compile()


terra R.findVariable(name :&int8,env : R.SEXP) : R.SEXP
   var res = Rbase.Rf_findVar( Rbase.Rf_install(name),env)
   if  res == R.constants.UnboundValue then
      return nil
   end
   if R.type(res) == R.types.PROMSXP then
      res = Rbase.Rf_eval(res, env)
   end
   return res
end
terra R.findVariable(name :&int8) : R.SEXP
   return R.findVariable(name, R.constants.GlobalEnv)
end
R.findVariable:compile()

-- Wrappers around the above to make this now Lua-esque
R.asEnvironment = nil
struct R.asEnvironment
{
   sexp : R.SEXP;
   type: int;
}
local lsF = R.makeRFunction("terrals",1, R.getNamespace("rterra"))


local emt =  {
   -- need pairs support
   -- __pairs = function(a)
   --    local listOfObjets = lsF(a)
   --    local i = 0
   --    local function j(t,k)
	 
   -- 	   end
   -- end,
   __index =  function(tabl, key)
      return(R.findVariable(key,tabl.sexp))
   end,
   __newindex =  function(tabl, key, value)
      -- local v = value.sexp or value
      if type(value) == "string" then
	 value = Rbase.Rf_ScalarString(Rbase.Rf_mkChar(value))
	 R.defineVariable(key,value,tabl.sexp)
      else
	 R.defineVariable(key,value.sexp,tabl.sexp)
      end
   end,
   __new = function(p)
      if p == nil then
	 return terralib.new(R.asEnvironment,R.constants.GlobalEnv,R.types.ENVSXP)
      elseif type(p) == "table" then
	 local j = Rbase.Rf_allocSExp(R.types.ENVSXP)
	 R.preserve(j)
	 for a,b in pairs(p.with) do
	    R.defineVariable(a,b,j)
	 end
	 R.release(j)
	 return terralib.new(R.asEnvironment, j,R.types.ENVSXP)
      else
	 return terralib.new(R.asEnvironment, p,R.types.ENVSXP)
      end
   end
}
R.asEnvironment.metamethods.__luametatable = emt
R.asEnvironment.metamethods.__typename=function(self) return "Environment" end

-- attributes
local getAttr = function(obj, attr)
   return Rbase.Rf_getAttrib(obj.sexp,Rbase.Rf_install(attr))
end
local setAttr = function(obj, attr,value)
   Rbase.Rf_setAttrib(obj.sexp,Rbase.Rf_install(attr),value)
end


R.cstr  = terra(v: R.SEXP) : &int8
   return Rbase.mychar(v)
end
R.cstring = R.cstr
R.luastr = terra(v: R.SEXP)
   return ffi.string(Rbase.mychar(v))
end
R.luastring = R.luastr



-- Wrappers for asMatrix
a = { {"Real",double,R.types.REALSXP}, {"Integer",int,R.types.INTSXP}}
R._matrices = {}
for _,ty in pairs(a) do
   R[ "Matrix" .. ty[1] ] = struct
   {
      base : &(ty[2]);
      nrows :int;
      ncols :int;
   }
   local emt =  {
      __index =  function(tabl, key)
	 return(tabl.base[ key[1] + key[2]*tabl.nrows ] )
      end,
      __newindex =  function(tabl, key, value)
	 tabl.base[ key[1] + key[2]*tabl.nrows ]  = value
      end,
      __new = function(o,odims)
	 local dim = getAttr(o,"dim")
	 local nr,nc
	 if dim == R.constants.NilValue then
	    nr,nc = odims[1],odims[2]
	 else
	    local dims = Rbase.INTEGER(dim)
	    nr,nc = dims[0],dims[1]
	 end
	 local s =  terralib.new(R[ "Matrix" .. ty[1] ],  o.ptr,nr,nc)
	 return s
      end
   }
   R[ "Matrix" .. ty[1] ].metamethods.__luametatable = emt
   R[ "newMatrix" .. ty[1]] =  R[ "Matrix" .. ty[1] ]   -- ffi.metatype(R[ "Matrix" .. ty[1] ] :cstring(),emt)
   R._matrices[ ty[3] ]  = R[ "newMatrix" .. ty[1]]
end

R.asMatrix = function(obj,...)
   return R._matrices[ obj.type ].metamethods.__luametatable.__new( obj,...)
end

return function()   return R,Rbase       end

 




