terralib.require("typesandfunctions")
-- WRONG API

ttests = {}
function ttests.testNameSpace(p)
   local myNS = R.Robj(p)
   local globalenv = R.Robj(R.constants.GlobalEnv)
   R.print(globalenv["foo"])
   myNS["foo"] = R.Robj{type='str',with={"alpha-gamma"}}
end


function ttests.makeIntegerVector()
   local z = R.Robj{type="int",init = {0,21,3,R.constants.NaLOGICAL}}
   z[0] = 31 + z[1]
   z['whoami'] = "integer vector"
   return z
end



function ttests.intVectorWithAttr(p,n)
   local z = R.Robj(p)
   stdio.printf("Printing the attribute ... ")
   R.print(z['foo'])
   local w = R.asRObj(n)
   local g = R.asRObj{type='str',with={ w[2] }}
   z['dooey'] = g
end

function ttests.makeLogicalVector()
   local z = R.Robj{type='logical',with = {0,2,3,R.constants.NaLOGICAL}}
   return z
end

require("io")
function ttests.matrixTest(s)
   local m = R.Robj(s)
   local mview = R.asMatrix(m)
   for j=0, mview.ncols - 1 do
      for i = 0, mview.nrows -1 do
	 io.write( mview[{i,j}],"\t" )
      end
      io.write("\n")
   end
end

function ttests.createVector()
   local runif=R.makeRFunction('runif',3,R.getNamespace('stats'))
   local m = R.Robj{type='list',length = 4}
   m[0] =  R.Robj{type='real',with = {1,2}}
   m[1] =  R.Robj{type='real',with = {2,2}}
   m[2] =  R.Robj{type='real',with = {3,2}}
   m[3] =  R.Robj(runif(R.Robj{type='real',with= {10}}.sexp,
		 		R.Robj{type='real',with = {-1}}.sexp,
		 		R.Robj{type='real',with = {1}}.sexp))
   return m
end


return ttests
