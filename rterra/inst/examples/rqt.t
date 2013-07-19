require 'qtcore'
require 'qtgui'
require 'qtnetwork'
require 'qtxml'
require 'qtwebkit'
require 'qtopengl'
require 'qtsql'
require 'qtsvg'
require 'qtuitools'
require 'qtxmlpatterns'


pthread = terralib.includec("pthread.h")
for _,a in pairs({"libQtCore.so","libQtGui.so","libQtNetwork.so","libQtXml.so","libQtWebKit.so","libQtOpenGL.so","libQtSql.so","libQtSvg.so","libQtXmlPatterns.so"}) do
   terralib.linklibrary(a)
end

rqt = {}

local ifd = global(int)
local ofd = global(int)
local fired=global(int,0)
local qtwriterthread = global(pthread.pthread_t)
rqt.App = nil
function rqt.processQTEvents(x)
   QCoreApplication.processEvents()
end
terra rqt.QTEventLoopHandler(data : &opaque)
   var buf : uint8[16]
   unistd.read(ifd,[&uint8](buf),16)
   rqt.processQTEvents()
   fired=0
end
terra rqt.mywriter(data : &opaque) : &opaque
   var buf : uint8[16];
   while true do
      unistd.usleep(10000)
      if fired == 0  then
	 fired = 1
	 buf[0]=0
	 var s = unistd.write(ofd, [&uint8](buf), 1);
      end
   end
end
terra rqt.QTEventLoopInit()
   var fds : int[2]
   if unistd.pipe(fds) == 0  then
      ifd,ofd = fds[0],fds[1]
      Rbase.addInputHandler(R.constants.InputHandlers,ifd,rqt.QTEventLoopHandler,31)
      Rbase.setCStackLimit(-1)
      pthread.pthread_create(&qtwriterthread,nil,rqt.mywriter,nil);
   end
end
function rqt.qtinit()
   rqt.App = QApplication(2, {"qtbase", "-nograb"})
   rqt.QTEventLoopInit()
end

print("Loaded QT for R and Lua")
return rqt

