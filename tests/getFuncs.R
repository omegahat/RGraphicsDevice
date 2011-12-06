library(RGraphicsDevice)
devFuns = dummyDevice( activate = function(dev) {
                              print(dev$deviceSpecific$activate)
	                      print(as(dev$deviceSpecific, "RDevDescMethods"))
                       },
                       newFrameConfirm = function(dev){ print("newFrameConfirm"); TRUE },
                       strWidthUTF8 = function(str, gcontext, dev) { print("strWidthUTF8"); nchar(str) * 12},
                       strWidth = function(str, gcontext, dev) { print("strWidth"); nchar(str) * 12})

dev = graphicsDevice("MyDevice",  funcs = devFuns)




