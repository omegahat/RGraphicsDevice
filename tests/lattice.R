library(RGraphicsDevice)
library(lattice)
if(FALSE) {
devFuns = dummyDevice( newFrameConfirm = function(dev){ print("newFrameConfirm"); TRUE },
                       circle = function(...) { cat("in circle\n") },
                       strWidthUTF8 = function(str, gcontext, dev) { print("strWidthUTF8"); nchar(str) * 12},
                       strWidth = function(str, gcontext, dev) { print("strWidth"); nchar(str) * 12})


devFuns = dummyDevice( newFrameConfirm = function(dev){ print("newFrameConfirm"); TRUE },
                       circle = function(...) { cat("in circle\n") })


devFuns = dummyDevice(clip = function(...) { cat("in circle\n") })

devFuns = dummyDevice( newFrameConfirm = function(dev){ print("newFrameConfirm"); TRUE },
                       strWidthUTF8 = function(str, gcontext, dev) { print("strWidthUTF8"); nchar(str) * 12},
                       strWidth = function(str, gcontext, dev) { print("strWidth"); nchar(str) * 12})

}

devFuns = dummyDevice(circle = function(...) { cat("in circle\n") })
                    

dev = graphicsDevice("MyDevice",  funcs = devFuns)
xyplot(mpg ~ wt | cyl, mtcars)
dev.off()

