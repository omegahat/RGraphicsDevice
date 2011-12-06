library(RGraphicsDevice)
devFuns = dummyDevice( activate = NULL,
                       newFrameConfirm = function(dev){ print("newFrameConfirm"); TRUE },
                       strWidthUTF8 = function(str, gcontext, dev) { print("strWidthUTF8"); nchar(str) * 12},
                       strWidth = function(str, gcontext, dev) { print("strWidth"); nchar(str) * 12})

dev = graphicsDevice("MyDevice",  funcs = devFuns)
# The fact that we don't see an [1] "activate" appear means it isn't being called.


try(devFuns <- dummyDevice( activate = NULL,
                       newFrameConfirm = function(){ print("newFrameConfirm"); TRUE }))
try(is(validObject(devFuns)))

devFuns = dummyDevice( activate = NULL,
                       newFrameConfirm = function(...){ print("newFrameConfirm"); TRUE })
validObject(devFuns)
