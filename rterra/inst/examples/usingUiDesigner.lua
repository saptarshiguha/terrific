require 'qtcore'
require 'qtgui'
require 'qtuitools'
local ffi = require("ffi")

local function loadUiFile(file)
        local f = QFile.new(file)
        f:open({"ReadOnly"})
        local uil = QUiLoader.new()
        local w = uil:load(f)
        f:close()
        return w
end


local window = QWidget.new()
local w = loadUiFile(UILocation)
w:show()


-- library(rterra)
-- tinit(clang="/opt/clang+llvm-3.3-Ubuntu-13.04-x86_64-linux-gnu/bin/clang")
-- terraFile(system.file("examples","rqt.t",package="rterra"))
-- terra("qtinit",table="rqt")
-- terraStr(sprintf("UILocation='/home/sguha/test.ui'"))
-- terraFile(system.file("examples","UusingUiDesigner.lua",package="rterra"))
