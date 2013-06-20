C = terralib.includec("myhash.h")
terralib.linklibrary("foo.so")
stdio = terralib.includec("stdio.h")
stdlib = terralib.includec("stdlib.h")
local function ptable(w)
   for key,value in pairs(w) do print(key,value) end
end
struct ComplexName
{
   name: &int8;
   x : double;
   y : double;
}
ComplexName.methods.new = terra(name :&int8, x:double, y:double)
   var v : &ComplexName = [&ComplexName](stdlib.malloc(sizeof(ComplexName)))
   v.name , v.x,v.y = name,x,y
   return v
end
terra ComplexName:print()
   stdio.printf("Name=%s, x=%f, y=%f\n", self.name, self.x,self.y)
end

function jny(keytype, valuetype)
   print(terralib.types.istype(keytype))
   print(keytype:isprimitive())
   print(valuetype:isprimitive())
   
end

jny(&int, double)
terra foo()
   var b = C.createNewHashTable()
   var d :int = 10
   var f = arrayof(int,1,2,3,4)
   var h = ComplexName.new("foo1",10.1,10.2)
   C.addItem(&b, d, &d, h)
   var hf = [&ComplexName] (C.findItem(&b, d))
   stdio.printf("%s %f %f\n", hf.name,hf.x, hf.y)
   return hf
end
-- foo()

terra M()
   var h = foo()
   h:print()
end
-- M()
-- foo:disas()
