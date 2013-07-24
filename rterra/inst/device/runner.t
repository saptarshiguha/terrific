require 'qtcore'
require 'qtgui'
require 'ffi'

local window = QGraphicsView.new()
local pen,brush,font=QPen.new(),QBrush.new(),QFont.new()
window:setRenderHints({"Antialiasing","SmoothPixmapTransform"})

function plotData3(a)
   local scene = QGraphicsScene.new()
   local aa = R.Robj(a)
   for i = 0,aa.length-1 do
      local plotElement = aa[i]
      local plotType = ffi.string(plotElement[0][0])
      if plotType == "circle" then
   	 local x,y, radius = plotElement[1][0],plotElement[2][0],plotElement[3][0]*5
   	 scene:addEllipse(x,y,radius,radius,pen, brush)
      elseif plotType == "line" then
   	 local x1,y1= plotElement[1][0], plotElement[2][0] 
	 local x2,y2=plotElement[3][0],plotElement[4][0]
   	 scene:addLine(x1,y1,x2,y2,pen)
      elseif plotType == "text" then
   	 local x,y=  plotElement[2][0], plotElement[3][0]
	 local rot = plotElement[4][0]
	 local txt =  ffi.string(plotElement[1][0])
	 local m = scene:addText(txt, font)
	 m:setPos(x,y)
	 m:setRotation(-rot)
      end
   end
   window:setScene(scene)
   window:show()
end

-- local realget = function(a,b,c)
--    return Rbase.REAL(Rbase.VECTOR_ELT(a,b))[c]
-- end
-- function plotData2(a)
--    local scene = QGraphicsScene.new()
--    for i = 0,Rbase.LENGTH(a)-1 do
--       local plotElement = Rbase.VECTOR_ELT(a,i)
--       local plotType = ffi.string(R.cstr(Rbase.STRING_ELT(Rbase.VECTOR_ELT(plotElement,0),0)))
--       if plotType == "circle" then
--    	 local x,y, radius = realget(plotElement,1,0),realget(plotElement,2,0),realget(plotElement,3,0)*10
--    	 scene:addEllipse(x,y,radius,radius,pen, brush)
--       elseif plotType == "line" then
--    	 local x1,y1= realget(plotElement,1,0),realget(plotElement,2,0)
-- 	 local x2,y2=realget(plotElement,3,0),realget(plotElement,4,0)
--    	 scene:addLine(x1,y1,x2,y2,pen)
--       elseif plotType == "text" then
--    	 local x,y=  realget(plotElement,2,0),realget(plotElement,3,0)
-- 	 local rot =  realget(plotElement,4,0)
-- 	 local txt =  ffi.string(R.cstr(Rbase.STRING_ELT(Rbase.VECTOR_ELT(plotElement,1),0)))
-- 	 local m = scene:addText(txt, font)
-- 	 m:setPos(x,y)
-- 	 m:setRotation(-rot)
--       end
--    end
--    window:setScene(scene)
--    window:show()
-- end


