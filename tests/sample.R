library(RGraphicsDevice)

devFuns = dummyDevice( newFrameConfirm = function(dev){ print("newFrameConfirm"); TRUE },
                       circle = function(...) { cat("in circle\n") },
                       strWidthUTF8 = function(str, gcontext, dev) { print("strWidthUTF8"); nchar(str) * 12},
                       strWidth = function(str, gcontext, dev) { print("strWidth"); nchar(str) * 12})

dev = graphicsDevice("MyDevice",  funcs = devFuns)

#dev = .Call("R_createGraphicsDevice",  dummy, "dummy")
  # Should have a call to activate() 
.Devices

names(dev)
dev$left

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

dev$canHAdj = 0
if(FALSE) {
dev$canClip = FALSE
dev$canChangeGamma = FALSE

dev$displayListOn = FALSE
}


plot(1:10)

library(lattice)
   # Problem.
xyplot(mpg ~ wt | cyl, mtcars)
cat("Did lattice\n")

library(maps)
map('usa')
#map('county')



