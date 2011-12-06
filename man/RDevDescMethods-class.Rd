\name{RDevDescMethods-class}
\docType{class}
\alias{RDevDescMethods-class}
\alias{RDevDescMethodsPtr-class}
\alias{graphicsDevice,ANY,RDevDescMethods-method}
\alias{[[,RDevDescMethodsPtr,ANY-method}
\alias{$,RDevDescMethodsPtr-method}
\alias{[[<-,RDevDescMethodsPtr,ANY-method}
\alias{$<-,RDevDescMethodsPtr-method}
\alias{names,RDevDescMethodsPtr-method}
\alias{[[,RDevDescMethodsPtr,ANY,ANY-method}

\title{RDevDescMethods class for implementing an R graphics device with R functions}
\description{
  This class is a structured   collection of functions
  that are used to implement the methods of the C-level
  graphics device interface in R.
  There is a slot for each such method. We know the number
  of arguments  each method takes and so can validate the
  values assigned to each slot.

  One can extend this class to add additional slots that
  are used for different device implementations.
  R programmers can access this object from the graphics device
  and such extension classes can be used to provide additional
  functions and objects to the different methods.

  Typically, the different functions used to implement the device
  methods are defined together within a function and so can share
  variables across calls via R's closure/lexical scoping mechanism.
}

\section{Objects from the Class}{
The typical way to create objects of this class is via \code{\link{dummyDevice}}.
}
\section{Slots}{
	 \describe{
    \item{\code{activate}:}{Object of class \code{"FunctionOrNULL"} a
      method called when this device becomes active, i.e. when we make
       this device the active one using \code{\link[grDevices]{dev.set}}.}
     \item{\code{deactivate}:}{Object of class \code{"FunctionOrNULL"}
       called when we switch to another device from this one and so it
       is no longer the active device.}       
     \item{\code{circle}:}{Object of class \code{"FunctionOrNULL"}
         draw a circle, using the color and fill from the graphics context.}
    \item{\code{clip}:}{Object of class \code{"FunctionOrNULL"} set the
      clip region to ensure that graphical elements do not extend
      outside of this region while the region is active. }
    \item{\code{initDevice}}{a function that is called when the device
      is first created.}
    \item{\code{initGEDevice}}{a function that is called after the
     device has  been created and it has been registered with the R
     graphics engine. Specifically, the device will be already
     associated with a C-level \code{GEDevDesc} instance.
     This allows us to set options such as the \code{ask},
     \code{displayListOn}, \code{recordGraphics} in the the \code{GEDevDesc}.
    }    
    \item{\code{close}:}{Object of class \code{"FunctionOrNULL"} a
      method called when device is being closed. Typically, we clean up
      any content the device generates, and possibly writes it to a file.}
    \item{\code{text}:}{Object of class \code{"FunctionOrNULL"}. Render
      a string at the specified location.}
    \item{\code{textUTF8}:}{Object of class \code{"FunctionOrNULL"}
      render a string on the device. This differs from the \code{text}
      method in that the string will be passed to the method as a UTF-8
      string. One must set  \code{wantSymbolUTF8} and \code{hasTextUTF8}
      in the device for this function to be invoked by the R graphics
      engine.
      This is typically done when the device is created, either directly
      or via a call to the \code{initDevice} method.
     }
    \item{\code{strWidthUTF8}:}{Object of class \code{"FunctionOrNULL"}
      a function that will be called to compute the width of a UTF-8
      string, but only if  \code{wantSymbolUTF8} and \code{hasTextUTF8}
      is set for this device.}    
    \item{\code{line}:}{Object of class \code{"FunctionOrNULL"} draw a
          line, using the color, line width and type from the graphics context.}
    \item{\code{polygon}:}{Object of class \code{"FunctionOrNULL"}  draw a
      polygon, using the colors in the \code{R_GE_gcontextPtr} for
      the lines and filling the interior if appropriate.}
    \item{\code{polyline}:}{Object of class \code{"FunctionOrNULL"}
     draw a  sequence of lines, using the line type and width, and colors in the \code{R_GE_gcontextPtr} for
      the lines and filling the interior if appropriate.}
    \item{\code{rect}:}{Object of class \code{"FunctionOrNULL"} draw a
      rectangle, using the colors in the \code{R_GE_gcontextPtr} for
      the lines and filling the interior if appropriate.
    }
    \item{\code{strWidth}:}{Object of class \code{"FunctionOrNULL"}
      compute the width of the given string using the current font.}    
    \item{\code{metricInfo}:}{Object of class \code{"FunctionOrNULL"}
      this is a function that takes 6 arguments.
      The first is the character for which we want the metric
      information. The second is the \code{\linkS4class{R_GE_gcontextPtr}}
      object giving the graphical parameters in effect, e.g. color,
      font, etc. The 3rd, 4th and 5th are special types of objects in R.
      They are references to C-level real values.  The intent is to set
      these within the function so that the C routine which invokes our
      R function will have access to these new values. We do this
      by assigning a value to the first element of the object, i.e.
      \code{ascent[1] = value}.
      These parameters are for the ascent, descent and width of the
      character.
      The final parameter is the \code{\link{DevDescPtr-class}}
      reference to the device.
    }
    \item{\code{size}:}{Object of class \code{"FunctionOrNULL"}
        determine the size of the device, i.e. return its width and height}    
    \item{\code{newFrameConfirm}:}{Object of class
      \code{"FunctionOrNULL"} a function that is called when the
      graphics engine is about to start a new "page" for this device,
      i.e. clear the entire device to start a new display.
     This function can perform actions such as asking the viewer if it
     is okay to proceed, or write content to a file.  This is only
     called if \code{ask} is set in the \code{GEDevDesc} associated with
     the graphics device.}      
    \item{\code{mode}:}{Object of class \code{"FunctionOrNULL"} a method
    that is called when the graphics engine starts and stops an
    operation. It helps us to know when the operation starts and ends
    and so organize elements into groups.}
    \item{\code{newPage}:}{Object of class \code{"FunctionOrNULL"} a
      method that is invoked when we move to a new page or display,
      effectively clearing the current contents. This is not called for
      each plot within, e.g. a \code{layout} or \code{par(mfrow = c(m,
	n))}.
      It is called when the entire display is to be cleared.
     }     
    \item{\code{onExit}:}{Object of class \code{"FunctionOrNULL"} called
    when the user has interrupted some operation for this device. It is essentially
    an error handler.}
    \item{\code{locator}:}{Object of class \code{"FunctionOrNULL"} for
    interactive devices, this can be invoked to allow the viewer to
    click on the device and identify a sequence of points.
    For non-interactive devices, one could imagine prompting the user to
    enter  a collection of (x, y) pairs or an R expression to evaluate
    to obtain the sequence.
    }    
    \item{\code{getEvent}:}{Object of class \code{"FunctionOrNULL"}
     for interactive devices, this is called to get a single event for
    the device.}
  }
}
\section{Extends}{
Class \code{"\link[RAutoGenRunTime]{CStruct-class}"}, directly.
}
\section{Methods}{
  \describe{
    \item{graphicsDevice}{\code{signature(name = "ANY", funcs =
	"RDevDescMethods")}: create an R graphics device using the functions in the
	     \code{RDevDescMethods} objects as graphical primitive operators}
    \item{graphicsDevice}{\code{signature(name = "RDevDescMethods")}:       
             create an R graphics device using the functions in the
	     \code{RDevDescMethods} objects as graphical primitive operators}
   }
}

\references{
\dQuote{The R Internals Manual}, R Development Core Team.
}
\author{
Duncan Temple Lang
}

\seealso{
 \code{\link{graphicsDevice}}
}
\examples{
  dev = dummyDevice()
  dev@activate = function(dev) {
                    dev$right = 968
                    dev$bottom = 724
                 }

  dev@line = function(x1, y1, x2, y2, gcontext, dev) {
                sys.call()
                newXMLNode("line",
                            attrs = c(x1 = x1, y1 = y1, x2 = x2, y2 = y2),
                            class = "")
             }   
}
\keyword{classes}
