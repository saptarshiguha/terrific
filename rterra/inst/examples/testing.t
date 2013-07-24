function j(o)
   local v = R.Robj(o)
   print("length",v.length)
   print("sexp",v.sexp)
   print("base",v.ptr)
   print("type",v.type)
   
   if v.type ~= R.types.ENVSXP then
      for i=0, v.length-1 do
	 print(v[i])
      end
   end
   return v
end
function MixMatch()
   local z= R.Robj{ type= "real",with={-1,-2,-3}}
   return z
end
function j1(o,b)
   local v = R.Robj(o)
   local gc = R.makeRFunction("go",0,nil)
   local z
   if v[0] == 1 then
      z = R.Robj{ type= "int",with={1,2,3}}
   elseif v[0] == 2 then
      z = MixMatch()
   elseif v[0] == 3 then
      z = R.Robj{ type= "logical",with={true, false}}
   elseif v[0] == 5 then
      z = R.Robj{ type= "logical",length=10}
   elseif v[0] == 4 then
      z = R.Robj{ type= "env",with={jail=o,notime=o}}
   elseif v[0] == 6 then
      z = R.Robj{ type= "string",with={"foo","boo","doubletime"}}
   elseif v[0] == 7 then
      local  k = R.Robj{ type= "string",with={"foo","boo","doubletime"}}
      z = R.Robj(b)
      z[0] = "winterbottom"
      z["testing"] = "salivate"
      z['testint'] = o
      z['test3'] = k
   elseif v[0] == 8 then
      local  k =R.Robj{type="list",with={o,b}}
      k['names'] = R.Robj{type='string',with={"one",'two'}}
      return k
   end
   return z
end


function j3(o)
   local j = R.Robj(o)
   local s= 0.0
   for i = 0,j.length-1 do
      s = s+j[i]
   end
   return R.Robj{type='numeric', with={s}}
end



-- library(rterra)
-- tinit(clang="/opt/clang3.3/bin/clang")
-- terraFile("~/a.lua") -- source the above terra code
-- terra("j",1:10)
-- terra("j",rnorm(5))

-- o=terra("j3",rnorm(10))
-- terra("j",1:10)
-- terra("j",c(TRUE,FALSE,NA))
-- terra("j",c(2+3i,4+1i))
-- terra("j",NULL)

-- terra("j",serialize(TRUE,NULL))


-- attr = "attribute"
-- obj = runif(5)
-- terra("j2",obj,attr)


-- v=terra("j",1:10)
-- v=terra("j",runif(3))
-- v=terra("j",serialize(TRUE, NULL))
-- v=terra("j",c(1+2i))
-- v=terra("j",c(TRUE,FALSE))
-- a = new.env(); a$foo = 10
-- v=terra("j",a)


-- go = function() {print("Runing gc");gc()}
-- terra("j1",6L)

-- terra("j1",7L,c("one",'two',"three"))
-- terra("j1",8L,c("one",'two',"three"))
