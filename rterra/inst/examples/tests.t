terralib.require("typesandfunctions")

ttests = {}
function ttests.testNameSpace(p)
   local myNS = R.asEnvironment(p)
   local globalenv = R.asEnvironment()
   R.print(globalenv["foo"])
   myNS["foo"] = R.newString{init={"alpha-gamma"}}
end


function ttests.makeIntegerVector()
   local z = R.newInteger{init = {0,21,3,R.constants.NaLOGICAL}}
   z[0] = 31 + z[1]
   return z
end

function ttests.makeIntegerVector2(p)
   local z = R.newInteger{fromSexp = p}
   z[0] = 31
end

function ttests.intVectorWithAttr(p,n)
   local z = R.newInteger{fromSexp = p}
   stdio.printf("Printing the attribute ... ")
   R.print(z:getAttr("foo"))
   local w = R.newString{fromSexp=n}
   local j = R.luastr(w[0])
   if j == "add" then 
      z:setAttr("dooey",R.newString{init={w[1]} })
   else
      local g = R.newString{init={ w[2] }}
      z:setAttr("doeey",g.sexp)
   end
end

function ttests.makeLogicalVector()
   local z = R.newLogical{init = {0,2,3,R.constants.NaLOGICAL}}
   return z
end

require("io")
function ttests.matrixTest(s)
   local m = R.newReal{fromSexp = s}
   local mview = R.asMatrix(m)
   for j=0, mview.ncols - 1 do
      for i = 0, mview.nrows -1 do
	 io.write( mview[{i,j}],"\t" )
      end
      io.write("\n")
   end
end


function ttests.createVector()
   local runif=R.makeRFunction("runif",3,R.getNamespace("stats"))
   local m = R.newVector{length = 4}
   m[0] =  R.newReal{init = {1,2}}.sexp
   m[1] =  R.newReal{init = {2,2}}.sexp
   m[2] =  R.newReal{init = {3,2}}.sexp
   m[3] =  runif(R.newReal{init = {10}}.sexp,
		 R.newReal{init = {0}}.sexp,
		 R.newReal{init={1}}.sexp)
   return m
end



return ttests
