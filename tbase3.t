-- A Lua Library for R Extensions
require("math")
local ffi = require("ffi")
Cstdio = terralib.includec("stdio.h")
Cmath = terralib.includec("math.h")
local function ptable(w)
   for key,value in pairs(w) do print(key,value) end
end


Rinternals =  terralib.includecstring [[
  #include <Rinternals.h>
  #include <Rmath.h>
  #include <a.h>
  SEXP rexpress(const char* );
  SEXP getGlobalEnv();
  const  char *mychar(SEXP );
  int type(SEXP);
  _RConstants*  getConstants();
]]
terralib.linklibrary("/usr/lib/R/lib/libR.so")
terralib.linklibrary("a.so")


R = {}
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

R.SEXP = &Rinternals.SEXPREC
R.print = Rinternals.Rf_PrintValue
R.isNA = Rinternals.R_IsNA
R.isFinite = Rinternals.R_finite
R.type = Rinternals.type
Rinternals._RConstants:complete()
if Rinternals.isnan then
   R.isNaN = Rinternals.isnan
else
   R.isNan = Rinternals.R_isnancpp
end
R.constants = global(Rinternals.getConstants(), Rinternals._RConstants)
R.Complex = Rinternals.Rcomplex
R.Complex:complete()

terra R.Complex:abs()
   return Cmath.sqrt(self.r*self.r+self.i*self.i)
end
terra R.unprotector(x:&Rinternals.SEXPREC)
   Cstdio.printf("Popping Stack\n")
   Rinternals.Rf_unprotect(1)
end

terra initialize_terra(it:R.SEXP)
end
-- Evaluates a string and returns a SEXP
-- @param q The R query string
terra R.evalString(q : &int8): R.SEXP
   return Rinternals.rexpress(q)
end

-- Integer/Real/Logical Arrays   --
local function typedArray(atype)
   local pa = {}
   if atype == R.types.INTSXP then
      pa.ctype=int
      pa.ptraccess = Rinternals.INTEGER
      pa.pfx = "Integer"
   elseif atype == R.types.REALSXP then
      pa.ctype=double
      pa.ptraccess = Rinternals.REAL
      pa.pfx = "Real"
   elseif atype == R.types.LGLSXP then
      pa.ctype = int
      pa.ptraccess = Rinternals.LOGICAL
      pa.pfx = "Logical"
   elseif atype == R.types.RAWSXP then
      pa.ctype = int8
      pa.ptraccess = Rinternals.RAW
      pa.pfx = "Raw"
   elseif atype == R.types.CPLXSXP then
      pa.ctype = R.Complex
      pa.ptraccess = Rinternals.COMPLEX
      pa.pfx = "Complex"
   end
   local struct ArrayT
   {
      sexp      : R.SEXP;
      ptr       : &pa.ctype;
      length    : int;
   }
   -- Creates an uninitialized array of length
   -- @param length integer length of the array
   R[ "new" .. pa.pfx] =   terra (length : int)
      var a : ArrayT
      a.sexp = Rinternals.Rf_allocVector([atype], length)
      ffi.gc(a.sexp,R.unprotector)
      a.ptr = [pa.ptraccess](a.sexp)
      a.length = length;
      Rinternals.Rf_protect(a.sexp)
      return(a)
   end
   -- Creates an initialized array from the SEXP other
   -- @param other The SEXP to imitate
   -- @param copy A boolean, if TRUE, then a copy is made else a will create a pointer to other
   local z1  = terra(other : R.SEXP, copy : bool)
      var a: ArrayT
      if copy then 
	 a.sexp = Rinternals.Rf_duplicate(other)
	 ffi.gc(a.sexp,R.unprotector)
	 Rinternals.Rf_protect(a.sexp)
      else
	 a.sexp = other
      end
      a.ptr = [pa.ptraccess](a.sexp)
      a.length = Rinternals.LENGTH(other);
      return a
   end
   
   -- Creates an newialized array from the other
   -- @param initial intial values of vector
   -- @param li the length of the initial values vector
   local z2 = terra (initial : &pa.ctype, li : int)
      var a: ArrayT
      a.sexp = Rinternals.Rf_allocVector([atype], li)
      ffi.gc(a.sexp,R.unprotector)
      a.ptr = [pa.ptraccess](a.sexp)
      a.length = li;
      Rinternals.Rf_protect(a.sexp)
      ffi.copy(a.ptr, initial, sizeof([pa.ctype])*li)
      return a
   end
   local z4 = terra (initial : ArrayT)
      var a: ArrayT
      a.sexp = Rinternals.Rf_duplicate(initial.sexp)
      ffi.gc(a.sexp,R.unprotector)
      Rinternals.Rf_protect(a.sexp)
      a.ptr = [pa.ptraccess](a.sexp)
      a.length = initial.length
      return a
   end
   -- Creates an newialized array from a single number
   -- @param initial intial value
   R["newScalar" .. pa.pfx] = terra (initial : pa.ctype)
      var a: ArrayT
      a.sexp = Rinternals.Rf_allocVector([atype], 1)
      ffi.gc(a.sexp,R.unprotector)
      a.ptr = [pa.ptraccess](a.sexp)
      a.length = 1;
      Rinternals.Rf_protect(a.sexp)
      @(a.ptr) = initial
      return a
   end
   R[ "new" .. pa.pfx]:adddefinition(z1:getdefinitions()[1])
   R[ "new" .. pa.pfx]:adddefinition(z2:getdefinitions()[1])
   -- R[ "newScalar" .. pa.pfx]:adddefinition(z3:getdefinitions()[1])
   R[ "new" .. pa.pfx]:adddefinition(z4:getdefinitions()[1])
   terra ArrayT:get(index:int) : pa.ctype
      return self.ptr[index]
   end
   terra ArrayT:set(index:int,value:pa.ctype) 
      @(self.ptr+index) = value
   end
   terra ArrayT:setAttr( attr:&int8, value :R.SEXP)
      Rinternals.Rf_setAttrib(self.sexp,Rinternals.Rf_install(attr),value)
   end
   terra ArrayT:attr(what: &int8)
      return Rinternals.Rf_getAttrib(self.sexp,Rinternals.Rf_install(what))
   end

   return ArrayT
end


local function typedOtherArray(atype)
   local pa = {}
   if atype == R.types.STRSXP then
      pa.pfx = "String"
      pa.accesor = Rinternals.SET_STRING_ELT
      pa.reader = Rinternals.STRING_ELT
   elseif atype == R.types.VECSXP then
      pa.pfx = "Vector"
      pa.accesor =  Rinternals.SET_VECTOR_ELT
      pa.reader = Rinternals.VECTOR_ELT
   end
   local struct ArrayT
   {
      sexp      : R.SEXP;
      length    : int;
   }
   local terra moshoo() end
   terra moshoo(length : int)
      var a : ArrayT
      a.sexp = Rinternals.Rf_allocVector([atype], length)
      ffi.gc(a.sexp,R.unprotector)
      a.length = length;
      Rinternals.Rf_protect(a.sexp)
      return(a)
   end
   terra moshoo(other: R.SEXP, copy :bool)
      var a : ArrayT;
      if copy then
	 a.sexp = Rinternals.Rf_duplicate(other)
	 a.length = Rinternals.LENGTH(other)
	 ffi.gc(a.sexp,R.unprotector)
	 Rinternals.Rf_protect(a.sexp)
      else
	 a.sexp = Rinternals.Rf_allocVector([atype], Rinternals.LENGTH(other))
	 ffi.gc(a.sexp,R.unprotector)
	 Rinternals.Rf_protect(a.sexp)
	 a.length = Rinternals.LENGTH(other)
	 for i=0, a.length do
	    [pa.accesor](a.sexp, i, [pa.reader](a.sexp,i))
	 end
      end
      return(a)
   end
   terra moshoo(other:ArrayT, copy :bool)
      var a : ArrayT;
      if copy then
   	 a.sexp = Rinternals.Rf_duplicate(other.sexp)
   	 a.length = other.length
	 ffi.gc(a.sexp,R.unprotector)
	 Rinternals.Rf_protect(a.sexp)
      else
   	 a.sexp = Rinternals.Rf_allocVector([atype], other.length)
   	 ffi.gc(a.sexp,R.unprotector)
   	 Rinternals.Rf_protect(a.sexp)
   	 a.length = other.length
   	 for i=0, a.length do
   	    [pa.accesor](a.sexp, i, [pa.reader](other.sexp,i))
   	 end
      end
      return(a)
   end
   R[ "new" .. pa.pfx] = moshoo
   local function quickly(a,b)
      if a == R.types.VECSXP then
	 return( quote
		    b
		    end)
      else
           return(quote
	      R.constants.NaSTRING
	      end)
        end
   end
   terra ArrayT:get(index:int) : R.SEXP
      return [pa.reader](self.sexp,index)
   end
   terra ArrayT:set(index:int, value: R.SEXP)
      [pa.accesor](self.sexp, index, [quickly(atype,value)])
   end
   terra ArrayT:setAttr( attr:&int8, value :R.SEXP)
      Rinternals.Rf_setAttrib(self.sexp,Rinternals.Rf_install(attr),value)
   end
   terra ArrayT:attr(what: &int8)
      return Rinternals.Rf_getAttrib(self.sexp,Rinternals.Rf_install(what))
   end
   return ArrayT
end
R.StringVector = typedOtherArray(R.types.STRSXP)
R.ListVector   = typedOtherArray(R.types.VECSXP)

local terra moshoo() end
terra moshoo( other: &(&int8), length:int )
   var a : R.StringVector
   a.sexp = Rinternals.Rf_allocVector(R.types.STRSXP, length)
   ffi.gc(a.sexp,R.unprotector)
   Rinternals.Rf_protect(a.sexp)
   a.length = length
   for i=0, a.length do
      Rinternals.SET_STRING_ELT(a.sexp, i,Rinternals.Rf_mkChar( other[i])  )
   end
   return(a)
end
local function blah(other,v)
   return( quote
	         var a : R.StringVector
   a.sexp = Rinternals.Rf_allocVector(R.types.STRSXP, 1)
   ffi.gc(a.sexp,R.unprotector)
   Rinternals.Rf_protect(a.sexp)
   a.length = 1
   Rinternals.SET_STRING_ELT(a.sexp, 0,v  )
   return(a)
   end)
end
terra moshoo( other: (&int8),length:int)
   [blah(other,`Rinternals.Rf_mkChar( other))]
end
terra moshoo( other: (&int8))
   [blah(other,`Rinternals.Rf_mkChar( other))]
end

terra moshoo( other: R.SEXP,length:int)
   [blah(other,other)]
end
terra moshoo( other: R.SEXP)
   [blah(other,other)]
end
R['newFromStringArray']  = moshoo
R['newScalarString'] = terra ( other: (&int8))
   [blah(other,`Rinternals.Rf_mkChar( other))]
end
terra R.StringVector:set(index:int, value: &int8)
   Rinternals.SET_STRING_ELT(self.sexp, index, Rinternals.Rf_mkChar( value))
end
-- use this like R.toCString(a:get(1))
R['toCString'] = terra(v: R.SEXP) : &int8
   return Rinternals.mychar(v)
end

R.IntegerVector = typedArray(R.types.INTSXP)
R.RealVector	= typedArray(R.types.REALSXP)
R.RawVector	= typedArray(R.types.RAWSXP)
R.LogicalVector = typedArray(R.types.LGLSXP)
R.ComplexVector = typedArray(R.types.CPLXSXP)

local z1 = terra(initial : &bool, li : int)
   var a: R.LogicalVector
   a.sexp = Rinternals.Rf_allocVector(R.types.LGLSXP, li)
   ffi.gc(a.sexp,R.unprotector)
   a.ptr =Rinternals.LOGICAL(a.sexp)
   a.length = li;
   Rinternals.Rf_protect(a.sexp)
   for i =0, a.length do
      @(a.ptr + i) = 1* [int](initial[i] == true)
   end
   return a
end
R['newLogical']:adddefinition(z1:getdefinitions()[1])
terra R.LogicalVector:set(index:int,value:bool)
   @(self.ptr+index) = [int](value)
end

function R.makeRFunction(fname, namespace, len)
   local nspace
   if not namespace == nil then
      local z1 = Rinternals.Rf_ScalarString(Rinternals.Rf_mkChar(namespace))
      local z2 = Rinternals.Rf_lang2(Rinternals.Rf_install("getNamespace"),z1)
      nspace = Rinternals.Rf_eval(z2,Rinternals.getGlobalEnv())
   else
      nspace = Rinternals.getGlobalEnv()
   end
   local langcall = Rinternals["Rf_lang" .. (len+1)]
   local fncall  = Rinternals.Rf_install(fname)
   local params = {}
   for i = 1,len do
      params[i] = symbol(R.SEXP,"argument" ..i)
   end
   return
      terra([params])
         var result = Rinternals.Rf_eval( langcall( fncall, [params]), nspace)
   	 ffi.gc(result,R.unprotector)
   	 Rinternals.Rf_protect(result)
   	 return result
      end
end

terra R.defineVariable(name :&int8, value:R.SEXP,  namespace:R.SEXP)
   Rinternals.Rf_defineVar(Rinternals.Rf_install(name),value,namespace)
end
terra R.defineVariable(name :&int8, value:R.SEXP)
   Rinternals.Rf_defineVar(Rinternals.Rf_install(name),value,R.constants.GlobalEnv)
end
R.getNamespace = R.makeRFunction("getNamespace",nil,1)


-- runif = R.makeRFunction("runif","stats",3)
social = R.makeRFunction("mySocialClub",nil,1)
-- runif:printpretty()
-- runif:disas()
terra testOne(p:R.SEXP)
   var b = R.newString(p,false)
   var c = R.newFromStringArray(arrayof(rawstring,"one","two","two"),3)
   var d = R.newScalarReal(1.02)
   -- return runif(R.newScalarReal(10).sexp,R.newScalarReal(1).sexp,R.newScalarReal(10).sexp)
   social(R.newScalarReal(10).sexp)
   c:setAttr("milestone",d.sexp)
   -- R.print(R.getNamespace(R.newScalarString("base").sexp))
   return c
   -- return R.newFromStringArray(c:get(1),1)
end
-- testOne:printpretty()
-- ptable(Rinternals)
