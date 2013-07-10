ffi	= require("ffi")
stdio	= terralib.includec("stdio.h")
stdlib	= terralib.includec("stdlib.h")
unistd  = terralib.includec("unistd.h")
cmath    = terralib.includec("math.h")
Rbase   = terralib.includecstring [[
  #include <rterra.h>
]]
function Rbase.ptable(w)   for key,value in pairs(w) do print(key,value) end end

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

function ___startit(...)
   local arg = {...}
   for _,v in ipairs(arg) do
      terralib.linklibrary(v)
   end
end

