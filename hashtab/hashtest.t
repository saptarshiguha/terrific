C = terralib.includec("myhash.h")
terralib.linklibrary("foo.so")
stdio = terralib.includec("stdio.h")
stdlib = terralib.includec("stdlib.h")
local ffi = require("ffi")

local function ptable(w)
   for key,value in pairs(w) do print(key,value) end
end
struct ComplexName
{
   name: &int8;
   x : double;
   y : double;
}
terra L(s:&ComplexName)
   stdio.printf("Goodbye\n")
   -- stdlib.free(s)
end
ComplexName.methods.new = terra(name :&int8, x:double, y:double)
   var v : &ComplexName = [&ComplexName](stdlib.malloc(sizeof(ComplexName)))
   ffi.gc(v, L)
   v.name , v.x,v.y = name,x,y
   return v
end

terra ComplexName:print()
   stdio.printf("Name=%s, x=%f, y=%f\n", self.name, self.x,self.y)
end

-- function jny(keytype, valuetype)
--    print(terralib.types.istype(keytype))
--    print(keytype:isprimitive())
--    print(valuetype:isprimitive())
-- end

-- function luafoo()
--    local c ={}
--    for i =1,NN do
--       local b = ComplexName.methods.new("foo1",10.1,10.2)
--       c[i] = b
--    end
--    return 1
-- end

-- jny(&int, double)
NN = 10000
terra foo()
   var b = C.createNewHashTable()
   var h = ComplexName.new("foo1",10.1,10.2)
   for i=1,NN do
      C.addItem(&b, i,&i,h)
   end
   return b
end

terra foo1()
   var b = C.createNewHashTable()
   var h1 = ComplexName.new("foo1",10.1,10.2)
   var h2 = ComplexName.new("foo2",10.1,10.2)
   var i = 10
   C.addItem(&b, i,&i,h1)
   C.addItem(&b, i,&i,h2)
   i=11
   collectgarbage()
   C.addItem(&b, i,&i,h2)
   print("HMMM1")
   return b
end

s=foo1()
print("HMMM")
terra foomix(hf : &C.hashT, w:int)
   var hf = [&ComplexName] (C.findItem(&hf, w))
   stdio.printf("%s %f %f\n", hf.name,hf.x, hf.y)
end

foomix(s, 11)



function goo()
   local x = os.clock()
   local b =   foo()
   print(string.format("elapsed time: %.2f\n", os.clock() - x))
   -- foomix(b)
   -- collectgarbage()
   -- x = os.clock()
   -- local j = luafoo()
   -- print(string.format("elapsed time: %.2f\n", os.clock() - x))
end
-- goo()

-- terra main()
--    foo()
-- end

