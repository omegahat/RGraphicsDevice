library(RGraphicsDevice)

devFuns = dummyDevice( line = function(x, y, x1, y1, gcontext, dev, ...) {
                            browser()
                       },
                       newFrameConfirm = function(dev){ print("newFrameConfirm"); TRUE },
                       strWidthUTF8 = function(str, gcontext, dev) { print("strWidthUTF8"); nchar(str) * 12},
                       strWidth = function(str, gcontext, dev) { print("strWidth"); nchar(str) * 12})

dev = graphicsDevice("MyDevice",  funcs = devFuns)


dev$left = 0
dev$right = 1000
dev$bottom = 800
dev$top = 0

dev$startps = 10
dev$startlty = 0
dev$startfont = 1
dev$startgamma = 1


dev$cra = c(.5, 13/12)*10

dev$xCharOffset = 0
dev$yCharOffset = 0.5
dev$yLineBias = 0

dev$ipr = rep(1/72.27, 2)

plot(1:10)
