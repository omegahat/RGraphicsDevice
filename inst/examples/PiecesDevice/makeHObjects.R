# These functions create the high-level descriptions of the plot
# into axes, title, data, ...
#
# We want the different parts such as the plot regions.
#
# getPlotRegionNodes, getStripNodes, getPlotPoints


# Put classes on the collection of graphical elements so
# we can differentiate between a basic collection, a plot, etc.
# and define methods for, e.g., dim()

getTypes =
function(els)  
  sapply(els, `[[`, "type")
    
getPlotPoints =
  # If multiple plots, then we want to arrange them by data region.
function(els, indices = FALSE)
{
  i = sapply(els, function(x) if(is.null(x[["isDataRegionElement"]])) FALSE else x[["isDataRegionElement"]])
  if(indices)
     which(i)
  else
     els[i]
}

getText =
function(els)
{
  sapply(getTextNodes(els), `[[`, "text")
}

getTextNodes =
function(els, indices = FALSE)
{
  i = sapply(els, `[[`, "type") == "text"
  if(indices)
     which(i)
  else
     els[i]  
}

setClass("PlotDescList", contains = "list")
setMethod("[", c("PlotDescList", "missing", "missing"),
          function(x, i, j, ..., drop = FALSE) {
            if(drop)
               x[ ! (c(getTypes(x) %in% c("mode", "clipToDevice", "clipToRegion", "newPlot"))) ]
            else
               callNextMethod()
          })

setMethod("dim", "PlotDescList",
          function(x) {
            r = getPlotRect(x)
            structure(c(diff(r[1:2]), diff(r[3:4])), names = c("width", "height"))
          })
    
getPlotRegionNodes =
function(els)
{
  ans = split(els, cumsum(getTypes(els) == "newPlot"))
  ans = ans[ sapply(ans, function(x) !all(getTypes(x) %in% c("newFrame", "newPlot")))]
  structure(sapply(ans, function(x) new("PlotDescList", x)),
             names = sapply(ans, getPlotCommand))
}

getPlotCommand =
function(els)
{
  i = sapply(els, function(x) "fullCalls" %in% names(x))
  if(!any(i))
    return("")
  
  k = els[i][[1]]$fullCalls
  if(as.character(k[[1]][[1]]) != "test") # XXX what we are using now
    deparse(k[[1]])
  else
    deparse(k[[2]])
}

getPanelNodes =
function(els, indices = FALSE)
{
  i = getType(els) == "newPlot"
  
  if(indices)
    which( i )
  else
    els[i]
}


getStripNodes =
  # Any of the elements which are part of a strip
function(els, indices = FALSE)
{
  i = sapply(els[[1]], function(x) length(grep("strip", x$calls)) > 0)
  if(indices)
    which(i)
  else
    e[[1]][i]
}


getAxesNodes =
function(els, indices = FALSE)
{
  i = sapply(els, function(x) "axis" %in% x$calls)
  if(indices)
    which(i)
  else
    els[i]
}

if(FALSE) {
  # these are just for handling the raw nodes
setClass("Axis", contains = "list")
} else {
  setClass("Axis",
            representation(at = "numeric",
                           tickLabels = "character",
                           line = "logical"),
            prototype = list(line = TRUE))
}

setClass("HorizontalAxis", contains = "Axis")
setClass("VerticalAxis", contains = "Axis")


getAxes =
function(els, make = TRUE)
{
  tmp = split(els, cumsum(sapply(els, `[[`, "type") == "mode"))

     # Now break them up into  separate groups
  i = sapply(tmp, function(x) all(sapply(x, function(x) "axis" %in% x$calls)))
  ans = tmp[i]
  ans = ans[ !sapply(ans, function(x) length(x) == 1 && x[[1]]$type == "mode") ]
#Need to get the text with this axes for the label.
  if(make)
    lapply(ans, makeAxis)
  else
    ans
    
}

makeAxis =
function(els)
{
   els = els[ ! sapply(els, `[[`, "type") %in% c("mode", "clipToRegion", "clipToDevice") ]

      # to determine whether this is horizontal or vertical, we
      # can look in the fullCalls to see which side, or can work from
      # the tick lines and get the orientation by examining the x's
   lines = els[sapply(els, `[[`, "type") == "line"]
   vertical = sapply(lines, function(x) x$x == x$x2)
   class = if(sum(vertical) > length(vertical)/2) "VerticalAxis" else "HorizontalAxis"
   ans = new(class)
   ans@at = sapply(lines, function(v) {
                     if(is(ans, "HorizontalAxis"))
                        v$y
                     else
                        v$x
                   })
   ans@tickLabels = getText(els)  # sapply( els[sapply(els, `[[`, "type") == "text"], `[[`, "text")
   #XXX ans@label                                                
   ans     
}

getTitle =
     # gets the axes labels
function(els, indices = FALSE)
{
  i = sapply(els, function(x) x$type == "text" && any(c("localTitle", "title") %in% x$calls))
  if(indices)
    which(i)
  else
    els[i]
}


getLegendNodes =
function(els, indices = FALSE)
{
  i = inCalls(els, "legend")
  if(indices)
    which(i)
  else
    els[i]
}

getLegend =
function(els, asNodes = TRUE)
{
  # if asNodes  = FALSE, return a Legend object with the info.
  
  nodes = els[inCalls(els, "legend")]
  types = sapply(nodes, `[[`, "type")
  labelNodes = nodes[types == "text"]
  names(labelNodes) = getText(labelNodes) # sapply(labelNodes, `[[`, "text")
  lineNodes = structure(nodes[types == "line"], names = names(labelNodes))
  list(labels = labelNodes, lines = lineNodes)
}

inCalls =
    # is the what one of the function calls in each of the elements.
function(els, what)
{
  sapply(els, function(x) what %in% x$calls)
}


getPlotRect =
function(els)
{
  i = getTypes(els) == "newPlot"
  if(!any(i)) {
     warning("can't determine plot rectangle")
     return(numeric())
  }

  els[i][[1]]$region
}


setGeneric("getBoundingBox", function(x, ...) standardGeneric("getBoundingBox"))

setMethod("getBoundingBox", "PlotDescList",
           function(x, ...)
               getPlotRect(x))


setMethod("getBoundingBox", "list",
           function(x, ...)
               getPlotRect(x))

setMethod("getBoundingBox", "Line",
           function(x, ...)
               c(min(x$x, x$x1), min(x$y, x$y1), max(x$x, x$x1), max(x$y, x$y1)))



getLabelNodes =
function(els)
{
   txt = getTextNodes(els)
   i = inCalls(txt, "title")
   txt[i]
}

getLabels =
function(els)
{
  nodes = getLabelNodes(els)
  # now figure out which are x, y, title.
  dims = getPlotRect(els)
  sides = sapply(nodes, getSide, dims)
  vals = sapply(nodes, `[[`, "text")
  names(vals) = sides
  vals
}

getSide =
function(e, dims)
{
  if(e$x < dims[1])
     "Left"
  else if(e$x > dims[2])
     "Right"
  else if(e$y > dims[4])
     "Bottom"
  else if(e$y < dims[3])
     "Top"
}



isLatticePlot =
function(els)
{
  any(sapply(els, function(x) "print.trellis" %in% x$calls))
}

getLatticeComponents =
function(els)
{
  types = getTypes(els)
  i = types == "clipToRegion"

  #XXX This puts axes, etc. into the wrong group
  # the axes end up in the strips.
  
  gr = split(els, cumsum(i))
  if(!i[1]) {
     extra = gr[[1]]
     gr = gr[-1]
  } else
     extra = list()

   # panels, strips and legend.

  isStrip = sapply(gr, function(x) any(inCalls(x, "strip")))
  if(any(isStrip)) {
    panels = gr[ which(isStrip) - 1L ]
    strips = gr[ which(isStrip) ]

    names(strips) = mapply(getStripName, strips, seq(along = strips))
    names(panels) = names(strips)
    
  } else {
    panels = gr
  }
  
  list(panels = panels, strips = strips, extra = extra)
}

getStrips =
function(els)
{

}


getStripName =
function(els, defaultName = "?")
{
  txt = getTextNodes(els)

  if(length(txt) == 0)
     defaultName
  else {
    paste(sapply(txt, `[[`, "text"), collapse = " ")
  }
}

clipDim =
function(obj, ...)
{
  obj[c("x", "x1", "y", "y1")]
}
