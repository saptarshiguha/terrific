ffi	= require("ffi")
stdio	= terralib.includec("stdio.h")
stdlib	= terralib.includec("stdlib.h")
unistd  = terralib.includec("unistd.h")
cmath    = terralib.includec("math.h")

function ___startit(...)
   local arg = {...}
   for _,v in ipairs(arg) do
      terralib.linklibrary(v)
   end
end

