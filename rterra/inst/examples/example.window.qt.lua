require 'qtcore'
require 'qtgui'
local ffi = require("ffi")

function createWindow(whatstring)
   local window = QWidget.new()
   window.string = whatstring
   window.initialize = function(self)
      local initialSceneRect = QRectF.new(-200, -200, 400, 400)
      self.scene = QGraphicsScene.new()
      self.topx=-100
      self.topy=-100
      self.sizex=200
      self.sizey=200
      self.view = QGraphicsView.new(self.scene, self)
      self.view:setSceneRect(QRectF.new(-200, -200, 400, 400))
      self.layout = QHBoxLayout(self)
      self.layout:addWidget(self.view)
      local it = QGraphicsRectItem(QRectF(-100, -100, 200, 200))
      it:setPos(QPointF(0, 0))
      local it2 = QGraphicsRectItem(QRectF(-80, -80, 160, 160))
      it2:setPos(QPointF(0, 0))
      self.scene:addItem(it)
      self.scene:addItem(it2)
   end
   
   window.keyPressEvent = function(self,evt)
      print("Detected key press:" .. self.string)
      self.topx = self.topx - 10
      self.topy = self.topy -10
      self.sizex =  self.sizex +20
      self.sizey = self.sizey + 20
      local it = QGraphicsRectItem(QRectF(self.topx, self.topy, self.sizex, self.sizey))
      it:setPos(QPointF(0, 0))
      self.scene:addItem(it)
      self.view:setSceneRect(QRectF(self.topx, self.topy, 2*self.sizex, 2*self.sizey))
   end
   return window
end
   
local mu = {}
doTest1 = nil
function doTest1(x)
   local printstring = ffi.string(Rinternals.R_CHAR(Rinternals.STRING_ELT(x, 0)))
   mu.window = createWindow(printstring)
   mu.window:initialize()
   mu.window:show()
end

doTest2 = nil
function doTest2(x)
   local z  = QPushButton.new("Quit!")
   mu[#mu +1 ] =  z
   z:show()
   z:connect('2clicked()',
	     function()
		print("Byeeee\n")
		z:close()
	     end)
   return nil
end



