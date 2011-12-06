library(RGraphicsDevice)
library(XML)
setClass("CSSStyle", contains = "character")

setAs("R_GE_gcontextPtr", "CSSStyle",
       function(from) {

          ans = character()
          ans["stroke-width"] = from$lwd

          col = as(from$col, "RGB")
          ans["stroke"] = if(col == "transparent") "none" else col
            

          fill = as(from$fill, "RGB")
          ans["fill"] = if(fill == "transparent") "none" else fill          

          new("CSSStyle", ans)
       })

rsvgDevice =
function(dim = c(800, 1000), file = character())
{
  dev = new("RDevDescMethods")
     # or use dummyDevice() to have the methods identify themselves as they are called
  #dev = dummyDevice()

  dim = as.integer(dim)

   # Create the top-level XML node and its <g> and <g><rect>
  top = newXMLNode("svg", attrs = c(viewBox=sprintf("0 0 %d %d", dim[1], dim[2]), version="1.1"),
                   namespaceDefinitions = c("http://www.w3.org/2000/svg", xlink="http://www.w3.org/1999/xlink" ))
  gg = newXMLNode("g", attrs = c(id = "surface0"), parent = top)
  newXMLNode("rect", attrs = c(x="0", y="0", width=dim[1], height=dim[2],
                              style="fill: rgb(100%,100%,100%); fill-opacity: 1; stroke: none;"),
             parent = gg)

   # This function converts the R_GE_gcontextPtr to a CSSStyle object that can be easily
   # added to an XML node as a style attribute
  setStyle = function(node, gcontext) {
    style = as(gcontext, "CSSStyle")
    xmlAttrs(node) = c("style" = paste(names(style), style, sep = ": ", collapse = "; "))
  }


    # Now let's implement the different graphical primitives.
    # Each of these add the SVG element to create the relevant content.
  
  dev@line = function(x1, y1, x2, y2, gcontext, dev) {
    x = newXMLNode("line", attrs = c(x1 = x1, y1 = y1, x2 = x2, y2 = y2), parent  = gg )
    setStyle(x, gcontext)
  }

  dev@circle = function(x, y, r, gcontext, dev) {
    x = newXMLNode("circle", attrs = c(cx = x, cy = y, r = r), parent = gg)
    setStyle(x, gcontext)
  }

  dev@rect = function(x, y, w, h, gcontext, dev) {
    x = newXMLNode("rect", attrs = c(x = x, y = y, width = w, height = h), parent = gg)
    setStyle(x, gcontext)
  }

  dev@polygon = function(n, x, y, gcontext, dev) {
        # Convert the x and y into R numeric vectors rather than doublePtr objects.
    x = x[1:n]
    y = y[1:n]    
    x = newXMLNode("polygon", 
                    attrs = c(points = paste(x, y, sep = ", ", collapse = " ")),
                    parent = gg)
    setStyle(x, gcontext)
  }

  dev@polyline = function(n, x, y, gcontext, dev) {
    x = x[1:n]
    y = y[1:n]    
    x = newXMLNode("polyline", 
                    attrs = c(points = paste(x, y, sep = ", ", collapse = " ")),
                    parent = gg)
    setStyle(x, gcontext)
  }  

  dev@text = function(x, y, str, rot, hadj, gcontext, dev) {
     x =  newXMLNode("text", str, attrs = c(x = x, y = y), parent = gg)
     setStyle(x, gcontext)
  }

  dev@strWidth = function(str, gcontext, dev) {
    nchar(str) *  min(10, gcontext $ ps) * gcontext$cex
  }
  
  dev@close = function(dev) {
     if(length(file) && !is.na(file))
       saveXML(top, file)
  }

  dev@initDevice = function(dev) {
    dev$ipr = rep(1/72.27, 2)
    dev$cra = rep(c(6, 13)/12) * 10
    dev$startps = 10
    dev$canClip = TRUE
    dev$canChangeGamma = TRUE
    dev$startgamma = 1 
    dev$startcol = as("red", "RGBInt")
  }

  dev = graphicsDevice(dev, dim, col = "red", fill = "transparent", ps = 10)

#  dev$right = dim[1]
#  dev$bottom = dim[2]

#  dev$startcol = as("purple", "RGBInt")
#  dev$startcol = -16777216L

  dev
}
