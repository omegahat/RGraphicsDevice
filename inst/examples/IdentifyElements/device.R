
# The idea here is for each call to a primitive to collect
# the system calls in effect and hopefully identify what primitive
# corresponds to what type of graphical object in the plot sense.

#eg:
if(FALSE) {
  library(RGraphicsDevice)
  dev = metaDev()
  plot(1:10, main = "Hi there")
  abline(h = seq(2, 8, by = 2), col = c("red", "blue"), lwd = c(2, 3))
  text(c(2, 6) + .5, c(2, 6) + .5, c("Here", "Now"))
  dev.off()
 dev$info()

 svg("foo.svg")
  plot(1:10, main = "Hi there")
  abline(h = seq(2, 8, by = 2), col = c("red", "blue"), lwd = c(2, 3))
  text(c(2, 6) + .5, c(2, 6) + .5, c("Here", "Now"))
 dev.off()


  library(lattice)
  dev = metaDev()
   xyplot( mpg ~ wt | cyl, mtcars)
  dev.off()
  dev$info()
}

library(RGraphicsDevice)

metaDev = 
function(dim = c(400L, 400L),
         ops = c("circle", "line", "polygon", "polyline", "rect", "text"),
         keepCalls = FALSE)
{
  callInfo = list()
  calls = list()

  addCall =
    function(prim, ...) {
       k = sys.calls()
       callInfo[[length(callInfo)+1L]] <<- sapply(k[-length(k)],
                                                          function(x) {
                                                               if(!is.function(x[[1]])) {
                                                                  as.character(x[[1]])
                                                                } else
                                                                   NA
                                                             })
       names(callInfo)[length(callInfo)] <<- prim

      if(keepCalls) {
           calls[[length(calls) + 1L]] <<- k
           names(calls)[length(calls)] <<- prim
       }
    }

   dev = new("RDevDescMethods")

   e = sys.frame(length(sys.frames()))
if(FALSE) {  
   lapply(ops,
           function(id) {
                            if(is(slot(dev, id), "FunctionOrNULL"))
                                slot(dev, id) <<- makeFun(id, e)
                          })
 }



    initDevice = function(dev) {
      dev$ipr = rep(1/72.27, 2)
      dev$cra = rep(c(6, 13)/12) * 10

      dev$startps = 10L
      dev$startlty = 0
      dev$startfont = 1L
      dev$startgamma = 1

      dev$clipBottom = 0L;  dev$clipRight = 0L ; dev$clipTop = 0L;  dev$clipBottom = 0L            
      dev$canHAdj = 0L
      dev$canClip = FALSE
      dev$canChangeGamma = FALSE

dev$xCharOffset = 0
dev$yCharOffset = 0.5
dev$yLineBias = 0

      
      dev$startcol = as("red", "RGBInt")
    }

#   dev = graphicsDevice(dev, dim, col = "red", fill = "transparent", ps = 10L)
   dev = graphicsDevice("foo", funcs = dev)

   ans = list(dev = dev, info = function() callInfo)
   if(keepCalls)
     ans$calls = function() calls
  
   ans
}

makeFun =
function(prim, e)
{
  f = function(...) 
         addCall(prim, ...)
  environment(f) = e
  body(f)[[2]] = prim
  
  f
}

f =
function(n)
{
   if(n == 1) {
browser()     
      return(1)
   }
   f(n - 1)
}
