terralib.require('typesandfunctions')
require('ffi')

Rt = {}

local t = { {"Double",double}, {"Integer",int},{"Complex",R.Complex},{"Raw",int8}}
for i=1,#t do
   local a,b = t[i][1],t[i][2]
   local F = struct 
   {
      base:&b;
      ncols:int;
      nrows:int;
   }
   terra F:get(i:int, j:int)
      return @(self.base+i+j*self.ncols)
   end
   terra F:getCol(i:int)
      return self.base+i*self.ncols
   end
   terra F:set(i:int, j:int, v:b)
      self.base[i+j*self.ncols] = v
   end
   Rt[ "Matrix" .. a ] =F
end
   
-- Integer/Real/Logical Arrays   --
local function typedArray(atype)
   local pa = {}
   pa.rtype = atype
   if atype == R.types.INTSXP then
      pa.ctype=int
      pa.ptraccess = Rbase.INTEGER
      pa.pfx = "Integer"
   elseif atype == R.types.REALSXP then
      pa.ctype=double
      pa.ptraccess = Rbase.REAL
      pa.pfx = "Real"
   elseif atype == R.types.LGLSXP then
      pa.ctype = int
      pa.ptraccess = Rbase.LOGICAL
      pa.pfx = "Logical"
   elseif atype == R.types.RAWSXP then
      pa.ctype = int8
      pa.ptraccess = Rbase.RAW
      pa.pfx = "Raw"
   elseif atype == R.types.CPLXSXP then
      pa.ctype = R.Complex
      pa.ptraccess = Rbase.COMPLEX
      pa.pfx = "Complex"
   end
   local struct ArrayT
   {
      sexp      : R.SEXP;
      ptr       : &pa.ctype;
      length    : int;
      type      : int;
   }
   -- Creates an uninitialized array of length
   Rt[ "new" .. pa.pfx] =   terra (length : int)
      var a : ArrayT
      a.sexp = Rbase.Rf_allocVector([atype], length)
      -- ffi.gc(a.sexp,R.release)
      a.ptr = [pa.ptraccess](a.sexp)
      a.length = length;
      -- R.preserve(a.sexp)
      return(a)
   end
   -- Creates an initialized array from the SEXP other
   -- @param other The SEXP to imitate
   -- @param copy A boolean, if TRUE, then a copy is made else a will create a pointer to other
   local z1  = terra(other : R.SEXP, copy : bool)
      var a: ArrayT
      if copy then 
	 a.sexp = Rbase.Rf_duplicate(other)
	 -- ffi.gc(a.sexp,R.release)
	 -- R.preserve(a.sexp)
      else
	 a.sexp = other
      end
      a.ptr = [pa.ptraccess](a.sexp)
      a.length = Rbase.LENGTH(other);
      return a
   end
   
   -- Creates an newialized array from the other, where other is the native type
   -- @param initial intial values of vector
   -- @param li the length of the initial values vector
   local z2 = terra (initial : &pa.ctype, li : int)
      var a: ArrayT
      a.sexp = Rbase.Rf_allocVector([atype], li)
      -- ffi.gc(a.sexp,R.release)
      a.ptr = [pa.ptraccess](a.sexp)
      a.length = li;
      -- R.preserve(a.sexp)
      ffi.copy(a.ptr, initial, sizeof([pa.ctype])*li)
      return a
   end
   -- creates a duplicate of another version of this type of array
   local z4 = terra (initial : ArrayT)
      var a: ArrayT
      a.sexp = Rbase.Rf_duplicate(initial.sexp)
      -- ffi.gc(a.sexp,R.release)
      -- R.preserve(a.sexp)
      a.ptr = [pa.ptraccess](a.sexp)
      a.length = initial.length
      return a
   end
   -- Creates an newialized array from a single number
   -- @param initial intial value
   Rt["newScalar" .. pa.pfx] = terra (initial : pa.ctype)
      var a: ArrayT
      a.sexp = Rbase.Rf_allocVector([atype], 1)
      -- ffi.gc(a.sexp,R.release)
      a.ptr = [pa.ptraccess](a.sexp)
      a.length = 1;
      -- R.preserve(a.sexp)
      @(a.ptr) = initial
      return a
   end
   Rt[ "new" .. pa.pfx]:adddefinition(z1:getdefinitions()[1])
   Rt[ "new" .. pa.pfx]:adddefinition(z2:getdefinitions()[1])
   Rt[ "new" .. pa.pfx]:adddefinition(z4:getdefinitions()[1])
   terra ArrayT:get(index:int) : pa.ctype
      return self.ptr[index]
   end
   terra ArrayT:set(index:int,value:pa.ctype) 
      @(self.ptr+index) = value
   end
   terra ArrayT:setAttr( attr:&int8, value :R.SEXP)
      Rbase.Rf_setAttrib(self.sexp,Rbase.Rf_install(attr),value)
   end
   terra ArrayT:attr(what: &int8)
      return Rbase.Rf_getAttrib(self.sexp,Rbase.Rf_install(what))
   end
   terra ArrayT:asMatrixDouble()
      var a:Rt.MatrixDouble
      -- var a = [&Rt.MatrixDouble](stdlib.malloc(sizeof(Rt.MatrixDouble)))
      var b  = self:attr("dim")
      if b ~= R.constants.NilValue then
   	 var h = Rt.newInteger(b,false)
   	 a.nrows ,a.ncols =  h:get(0),h:get(1)
   	 a.base = [&double](self.ptr)
	 return a
      end
   end
   terra ArrayT:asMatrixDouble(i:int, j:int)
      -- var a = [&Rt.MatrixDouble](stdlib.malloc(sizeof(Rt.MatrixDouble)))
      var a =Rt.MatrixDouble{ ([&double](self.ptr)) , i,j}
      -- a = {[&double](self.ptr),i,j}
      a.base = [&double](self.ptr)
      a.ncols=i
      a.nrows = j
      self:setAttr("dim", Rt.newInteger(arrayof(int, i,j),2).sexp)
      return a
   end
   return ArrayT
end

Rt.IntegerVector	= typedArray(R.types.INTSXP)
Rt.RealVector		= typedArray(R.types.REALSXP)
Rt.RawVector		= typedArray(R.types.RAWSXP)
Rt.LogicalVector	= typedArray(R.types.LGLSXP)
Rt.ComplexVector	= typedArray(R.types.CPLXSXP)

-- ------------------------------------------
-- some specializations for Logical Vectors
-- ------------------------------------------
local z1 = terra(initial : &bool, li : int)
   var a: Rt.LogicalVector
   a.sexp = Rbase.Rf_allocVector(R.types.LGLSXP, li)
   -- ffi.gc(a.sexp,R.release)
   a.ptr =Rbase.LOGICAL(a.sexp)
   a.length = li;
   -- R.preserve(a.sexp)
   for i =0, a.length do
      @(a.ptr + i) = 1* [int](initial[i] == true)
   end
   return a
end
Rt['newLogical']:adddefinition(z1:getdefinitions()[1])
terra Rt.LogicalVector:set(index:int,value:bool)
   @(self.ptr+index) = [int](value)
end



local getAttr = function(obj, attr)
   return Rbase.Rf_getAttrib(obj.sexp,Rbase.Rf_install(attr))
end
local setAttr = function(obj, attr,value)
   local z = value
   if type(value) == "string" then
      z = Rbase.Rf_allocVector(R.types.STRSXP,1)
      Rbase.SET_STRING_ELT(z,0, Rbase.Rf_mkChar(value))
   elseif type(value) == "number" then
      z = Rbase.Rf_allocVector(R.types.REALSXP,1)
      Rbase.REAL(z)[0] = value
   elseif type(value) == "userdata" then
      -- presume it is from R ...
      z = value
   elseif value.sexp ~= nil then
      -- from Robj
      z = value.sexp
   end
   Rbase.Rf_setAttrib(obj.sexp,Rbase.Rf_install(attr),z)
end

local myIter = function(a,i)
   if i< a.length then
      local v = a[i]
      i=i+1
      return i,v
   end
end


local methods = {}
for _,tp in pairs({{Rt.IntegerVector,Rbase.INTEGER,R.types.INTSXP},
		   {Rt.RealVector,Rbase.REAL, R.types.REALSXP},
		   {Rt.RawVector,Rbase.RAW, R.types.RAWSXP},
		   {Rt.LogicalVector,Rbase.LOGICAL, R.types.LGLSXP},
		   {Rt.ComplexVector,Rbase.COMPLEX, R.types.CPLXSXP},
		  }) do
   local emt = {
      __index  = function(a,b)
	 if type(b) == "number" then 
	    return a.ptr[b]
	 else
	    return getAttr(a, b)
	 end
      end,
      __ipairs = function(a)
	 return myIter, a, 0
      end,
      __newindex =function(a,b,c)
	 if type(b) == "number" then
	    a.ptr[b] = c
	 else
	    setAttr(a, b,c) -- c must be a sexp!
	 end
      end,
      __len = function(a)
	 return a.length
      end,
      __new = function(...)
	 local args = ...
	 local jj,ll,X
	 if type(args) == "table" then
	    if args.with ~= nil or args.init ~=nil then
	       X = args.with or args.init
	       ll = #X
	       jj = Rbase.Rf_allocVector(args.type,ll)
	       for i=1,ll do
		  tp[2](jj)[i-1] =X[i]
	       end
	    elseif args.length ~= nil then
	       ll = args.length
	       jj = Rbase.Rf_allocVector(args.type,ll)
	    end
	 else
	    jj = args
	    ll = Rbase.LENGTH(jj)
	 end
	 local j = terralib.new(tp[1], jj, tp[2](jj), ll, tp[3])
	 -- ffi.gc(j,R.releaseInternal)
	 -- Rbase.R_PreserveObject(j.sexp)
	 return j
      end
   }
   tp[1].metamethods.__luametatable = emt
   methods[tp[3]] = tp[1] --ffi.metatype(tp[1]:cstring(), emt)
end


Rt.StringVector = struct 
{
   sexp      : R.SEXP;
   length    : int;
   type      : int;
}

local qtype = function(j)
   if type(j) == "string" then
      return "string"
   else
      local z = terralib.typeof(j)
      if z.name == "&SEXPREC" then 
	 return Rbase.TYPEOF(j)
      else
	 return z.name
      end
   end
end
local convert = { string = function(d) return Rbase.Rf_mkChar(d) end}
convert[R.types.CHARSXP] = function(d) return d end
convert[R.types.STRSXP] = function(d) return Rbase.STRING_ELT(d,0) end
convert["&int8"] = function(d)
   return   Rbase.Rf_mkChar(ffi.string(d))
end

local emt = {
   __index  = function(a,b)
      if type(b) == "number" then 
	 local v = Rbase.STRING_ELT(a.sexp, b)
	 if R.isNaSTRING(v) then
	    return R.constants.NaSTRING
	 else
	    return R.cstr(v) -- what type is this? check...
	 end
      else
	 return getAttr(a, b)
      end
   end,
   __ipairs = function(a)
      return myIter, a, 0
   end,
   __len = function(a)
	 return a.length
   end,
   __newindex =function(a,b,c)
      if type(b) == "number" then
	 Rbase.SET_STRING_ELT(a.sexp, b, convert[ qtype(c) ](c))
      else
	 setAttr(a, b,c) -- c must be a sexp!
      end
   end,
   __new = function(...)
      local args = ...
      local jj,ll,X
      if type(args) == "table" then
	 if args.with ~= nil or args.init ~= nil then
	    X = args.with or args.init
	    ll = #X
	    jj = Rbase.Rf_allocVector(R.types.STRSXP,ll)
	    for i=1,ll do
	       local c =X[i]
	       Rbase.SET_STRING_ELT(jj, i-1, convert[ qtype(c) ](c))
	    end
	 elseif args.length ~= nil then
	    ll = args.length
	    jj = Rbase.Rf_allocVector(R.types.STRSXP,ll)
	 end
      else
	 jj = args
	 ll = Rbase.LENGTH(jj)
      end
      local j = terralib.new(Rt.StringVector, jj, ll, R.types.STRSXP)
      -- ffi.gc(j,R.releaseInternal)
      -- Rbase.R_PreserveObject(j.sexp)
      return j
   end
}
Rt.StringVector.metamethods.__luametatable = emt
methods[R.types.STRSXP] = Rt.StringVector --fi.metatype(Rt.StringVector:cstring(), emt)


Rt.ListVector = struct 
{
   sexp      : R.SEXP;
   length    : int;
   type      : int;
}

local getWhat = function(c)
   local tt = type(c)
   if tt == "userdata"  then
      return  c
   elseif c.sexp ~= nil then
      -- Robj returns cdata ...
      return c.sexp
   end
end
local emt = {
   __index  = function(a,b)
      if type(b) == "number" then 
	 local f =   Rbase.VECTOR_ELT(a.sexp, b)
	 return R.Robj(f)
      else
	 return getAttr(a, b)
      end
   end,
   __ipairs = function(a)
      return myIter, a, 0
   end,
   __len = function(a)
	 return a.length
   end,
   __newindex =function(a,b,c)
      if type(b) == "number" then
	 Rbase.SET_VECTOR_ELT(a.sexp, b,getWhat(c))
      else
	 setAttr(a, b,c) -- c must be a sexp!
      end
   end,
   __new = function(...)
      local args = ...
      local jj,ll,X
      if type(args) == "table" then
   	 if args.with ~= nil or args.init ~=nil then
   	    X = args.with or args.init
   	    ll = #X
   	    jj = Rbase.Rf_allocVector(R.types.VECSXP,ll)
   	    for i=1,ll do
   	       local c = X[i]
   	       Rbase.SET_VECTOR_ELT(jj, i-1, getWhat(c))
   	    end
   	 elseif args.length ~= nil then
   	    ll = args.length
   	    jj = Rbase.Rf_allocVector(R.types.VECSXP,ll)
   	 end
      else
   	 jj = args
   	 ll = Rbase.LENGTH(jj)
      end
      local j = terralib.new(Rt.ListVector, jj, ll, R.types.VECSXP)
      -- ffi.gc(j,R.releaseInternal)
      -- Rbase.R_PreserveObject(j.sexp)
      return j
   end
}
Rt.ListVector.metamethods.__luametatable = emt
methods[R.types.VECSXP] = Rt.ListVector --ffi.metatype(Rt.ListVector:cstring(), emt)


methods[R.types.NILSXP] = {metamethods = { __luametatable = { __new = function(a) return R.constants.NilValue end }}}

methods[R.types.ENVSXP] = {metamethods = { __luametatable = { __new = function(a) return R.asEnvironment(a) end }}}


local lookup = { string = {}}
lookup.string = {
   string = R.types.STRSXP, real = R.types.REALSXP,
   double = R.types.REALSXP, numeric = R.types.REALSXP,
   int = R.types.INTSXP, integer = R.types.INTSXP,
   complex = R.types.CPLXSXP, cplx = R.types.CPLXSXP,
   raw =R.types.RAWSXP, byte = R.types.RAWSXP,
   bool = R.types.LGLSXP, boolean = R.types.LGLSXP,
   logical = R.types.LGLSXP, list = R.types.VECSXP,
   vector  =R.types.VECSXP, env = R.types.ENVSXP,
   str=  R.types.STRSXP,char = R.types.STRSXP, character = R.types.STRSXP,
   environment  = R.types.ENVSXP}

lookup.number = {}
for a,b in pairs(R.types) do lookup.number[b] = b end


R.Robj = function(o,...)
   local z = ...
   if type(o) == 'table' then
      o.type = lookup[ type(o.type)][o.type]
      local f = methods[o.type].metamethods.__luametatable.__new(o)
      return(f)
      -- return terralib.new(methods[ o.type ],o)
   else
      -- return methods[Rbase.TYPEOF(o)](o)
      -- local f =  terralib.new(methods[Rbase.TYPEOF(o)],o)
      local f = methods[Rbase.TYPEOF(o)].metamethods.__luametatable.__new(o)
      return(f)
   end
end


return Rt
