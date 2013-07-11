function ptable(w)   for key,value in pairs(w) do print(key,value) end end

   struct A
   {
      a:int;
   }

test = nil
terra test(a:int, b:int)
   var c = 1
   var d = b+ a 
   return d
end


=test(1,2)

a = test:getdefinitions()
d1 = a[1]
=d1
ptable(d1)
=test:emitllvm()

test:printstats()

ptable(d1.untypedtree.body.body.statements[3].expressions[1])
