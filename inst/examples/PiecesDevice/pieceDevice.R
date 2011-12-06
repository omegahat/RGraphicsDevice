#
# This graphics device tries to figure out what is being
# drawn as higher-level  constructs, e.g. axes, titles,
# box for the entire plot, ...
#
# Basically, we collect up the calls to the graphical primitive
# functions and all the arguments of relevance. We also store
# the call stack (sys.calls()) and the names of the functions in effect
# on that stack. This helps us to identify what part of the plot is
# being drawn, e.g. axis(), title(), mtext(), ...
# We also can calculate the region data region
#
#


library(RGraphicsDevice)
setClass("PieceDeviceMethods",
            representation( pages = "function"),
          contains = "RDevDescMethods")

getDataRegion =
  #
  # Figure out in device coordinates what the data region for the
  # current plot. This will handle par(mfrow = c(r, c))
  # It returns the min and max for horizontal and for vertical.
  #
function(dims, pars = par())
{
    #  "cxy"  "fig"  "mfg"  "usr"  "xaxp" "yaxp" are the interesting ones
  xp = pars[c("fig", "plt")]

  w = dims[1] * xp$fig[1:2] 
  h = dims[2] * xp$fig[3:4]

  w = w[1]  + diff(w) * xp$plt[1:2]
   # row 1 of par(mfrow = c(2, n)) will yield high values
   # since we are counting from the lower corner in this world.
  h = min(h)  + abs(diff(h)) * xp$plt[3:4]  

  list(hor = w, vert = h)    
}

isDataRegionElement =
function(type, val, gc = NULL, calls = val$calls) {
 !( type %in% c("mode", "newPlot", "newFrame")) &&
      !any(calls %in% c("axis", "mtext", "localTitle", "title", "box"))
}

isDataRegionElementCoords =
  # Checks that the coordinates given by  x, y are all within
  # the data region given by dims.
function(x, y, dims, region = getDataRegion(dims), clip = TRUE)
{
  all(x >= region$hor[1] & x <= region$hor[2] & y >= region$vert[1] & y <= region$vert[2])
}


classes = c(rect = "Rectangle", circle = "Circle", line = "Line",
             polyline = "PolyLine", polygon = "Polygon")
             

pieceDevice =
function(width = 1000, height = 800, col = "black", ps = 12, fill = "transparent",
          funs = dummyDevice( obj = new("PieceDeviceMethods"))) 
{

  pages = list()
  elements = list()

    # return the plots
  funs@pages = function() pages

  dims = c(width, height)
  curRegion = NULL
  add = function(type, gc, ..., class = NA) {

    if(TRUE) {
      r = unlist(getDataRegion(dims))
      if(is.null(curRegion) || any(curRegion != r)) {
        elements[[length(elements) + 1L]]  <<- structure(list(type = "newPlot", region = r,
                                                              index = length(elements) + 1L,
                                                              origType = type),
                                                         class = "NewPlotDesc")
        curRegion <<- r
      }
    }
    
    val = list(...)
    val$type = type
    if(is.na(class)) {
       class = c(classes[type], "GraphicalObjectDesc")
    }
    if(any(is.na(class)))
       class = c("GenericGraphicaObjectDesc", "GraphicalObjectDesc")
    class(val) = class
    
    k = sys.calls()
    
    val$calls = sapply(k[seq(1, length(k) - 2)], function(x) as.character(x[[1]]))
    val$fullCalls = k#[seq(1, length(k) - 2)]

    val$isDataRegionElement = isDataRegionElement(type, val, gc) && isDataRegionElementCoords(val$x, val$y, c(width, height))
    val$gcontext = if(!is.null(gc)) as(gc, "R_GE_gcontext") else NULL
    elements[[length(elements) + 1]] <<- val
  }
  
  funs@circle =
    function(x, y, r, gc, dev) {
       add("circle", gc, x = x, y = y, r = r)
    }

  funs@line =
    function(x1, y1, x2, y2, gc, dev) {
       add("line", gc, x = x1, y = y1, x2 = x2, y2 = y2)
    }
  funs@rect =
    function(x1, y1, x2, y2, gc, dev) {
       add("rect", gc, x = x1, y = y1, x2 = x2, y2 = y2)
    }

  funs@polygon =
    function(n, x, y, gc, dev) {
       add("polygon", gc, x = x[1:n], y = y[1:n])
    }

  funs@polyline =
    function(n, x, y, gc, dev) {
       add("polyline", gc, x = x[1:n], y = y[1:n])
    }


if(FALSE)  
  funs@textUTF8 = function(x, y, text, rot, hadj, gc, dev) {
cat("UTF8: ", text, "\n")
  }


  funs@strWidth = function(str, gc, dev) {
     gc$cex * gc$ps * nchar(str)
  }

  funs@metricInfo = function(char, gc, ascent, descent, width, dev) {
    #XXX Need to ma
    # Maybe use Freetype.
    # When merging with a "real"  device that will do the rendering,
    # defer to it.
    width[1] = gc$ps * gc$cex
    ascent[1] = 1
    descent[1] = .25
  }

  
  funs@text = function(x, y, text, rot, hadj, gc, dev) {
       add("text", gc, x = x, y = y, text = text, rot = rot, hadj = hadj)
  } 


  funs@clip = function(x, y, x1, y1, dev) {

        if(all(c(x, y, x1, y1) == c(0, width, height, 0)))
           add("clipToDevice", NULL, x = x, y = y, x1 = x1, y1 = y1, class = "ClipToDevice")
        else
           add("clipToRegion", NULL, x = x, y = y, x1 = x1, y1 = y1, class = "ClipToRegion")          
   }


  funs@mode = function(val, dev)
         add("mode", NULL, val = val)


  funs@newFrameConfirm = function(dev) {
   TRUE
  }
  

  finishPlot = function()  {
    if(length(elements) == 0 || all(sapply(elements, `[[`, "type")  %in% c("newFrame", "newPlot")))
      return()
    
    pages[[length(pages) + 1]] <<- new("PlotDescList", elements)
    elements <<- list()
  }

  funs@newPage = function(gcontext, dev) 
       finishPlot()

  funs@close = function(dev)
     finishPlot()


  funs@initDevice = function(dev) {

       # The all important parameter to set ipr to get the plot region with adequate margins

#    dev$ipr = rep(1/72.27, 2)
#    dev$cra = rep(c(6, 13)/12) * 10
    dev$cra = c(10.8, 14.39)
    dev$startps = ps
    dev$canClip = TRUE # FALSE
    dev$canChangeGamma = FALSE
    dev$startgamma = 0
    dev$startcol = as(col, "RGBInt")
    dev$startfill = -1L
    dev$xCharOffset = .4899999
    dev$yCharOffset = .3332999
    dev$yLineBias = .1


if(FALSE) {    
    dev$hasTextUTF8 = TRUE
    dev$wantSymbolUTF8 = TRUE
}

    dev$startfont = 1L
    dev$canHAdj = 2L
    

#   dev$top = 0
#   dev$bottom = dev$clipBottom = height
#   dev$left = 0
#   dev$right = dev$clipRight = width
  }

  funs@GEInitDevice =  function(dev) {
    return(TRUE)
      gedev <- as(dev, "GEDevDescPtr")
      gedev$recordGraphics = FALSE # TRUE
      gedev$ask = FALSE
  }

  
  dev = graphicsDevice(funs, as.integer(c(width, height)), col, fill, ps)
 

  list(dev = dev, pages = funs@pages)
}



         
