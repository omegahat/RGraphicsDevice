\name{DevDesc-class}
\docType{class}
\alias{DevDesc-class}
\alias{DevDescPtr-class}
\alias{[[,DevDescPtr,ANY-method}
\alias{$,DevDescPtr-method}
\alias{[[<-,DevDescPtr,ANY-method}
\alias{$<-,DevDescPtr-method}
\alias{names,DevDescPtr-method}
\alias{[[,DevDescPtr,ANY,ANY-method}

\title{Class "DevDescPtr" representing a C-level Graphics Device}
\description{
  The \code{DevDescPtr}  class represents a C-level data structure
  that corresponds to an existing R graphics device. If the device
  is active, R graphics commands will cause the device's graphical
  operators to be called.

  We typically obtain a reference to the graphics device
  via the function \code{\link{graphicsDevice}}.
  It is also passed as an argument in each call to the R functions that operate as  graphical
  primitives for the R-level graphics device.
  
  We can query and set the state of the device treating it like a list
  in R.
    We can then access the individual fields, querying and setting their
  values using the regular R operators \code{[[} and \code{\$}, e.g.
  \code{dev$left} and \code{dev$right = 1000}.
  
}
\section{Objects from the Class}{
  Objects of class \code{DevDescPtr} are created by the R graphics engine
  in C code and via the function \code{\link{graphicsDevice}}. We do not
  create them ourselves.
  
  On occassion, it might be useful to convert the reference to the C
  structure to an R structure, i.e. one with the corresponding slots
  and the values as R vectors, etc.  We use  the \code{DevDesc} class
  for this and we can convert using the \code{\link[methods]{as}}
  function, e.g. \code{as(dev, "DevDesc")}.  
}
\section{Slots}{
	 \describe{
    \item{\code{left}:}{Object of class \code{"numeric"} typically 0 }
    \item{\code{right}:}{Object of class \code{"numeric"}  typically the
   width of the device}
    \item{\code{bottom}:}{Object of class \code{"numeric"} typically the
   height of the device}
    \item{\code{top}:}{Object of class \code{"numeric"}  typically 0}
    \item{\code{clipLeft}:}{Object of class \code{"numeric"} typically 0 }
    \item{\code{clipRight}:}{Object of class \code{"numeric"}  }
    \item{\code{clipBottom}:}{Object of class \code{"numeric"}  }
    \item{\code{clipTop}:}{Object of class \code{"numeric"}  }
    \item{\code{xCharOffset}:}{Object of class \code{"numeric"}  }
    \item{\code{yCharOffset}:}{Object of class \code{"numeric"}  }
    \item{\code{yLineBias}:}{Object of class \code{"numeric"}  }
    \item{\code{ipr}:}{Object of class \code{"numeric"} number of inches  per raster "pixel"}
    \item{\code{cra}:}{Object of class \code{"numeric"} the size (width
  and height) of a character in rasters }
    \item{\code{gamma}:}{Object of class \code{"numeric"} the gamma correction }
    \item{\code{canClip}:}{Object of class \code{"Rboolean"} a logical
  value indicating whether the device can perform clipping operations
  itself or whether they should be done (more crudely) by R's graphics engine }
    \item{\code{canChangeGamma}:}{Object of class \code{"Rboolean"} a
  logical value indicating whether the gamma value can be changed during
  the life of the device.}
    \item{\code{canHAdj}:}{Object of class \code{"integer"}  a value
  specifying whether the device can do horizontal
  alignment/justification. This can be one of 0, 1 or 2.
  }
    \item{\code{startps}:}{Object of class \code{"numeric"}  the initial
  value for the point size, i.e. size of the "font"}
    \item{\code{startcol}:}{Object of class \code{"integer"},  the
  default color for the pen for drawing lines, curves, etc. }
    \item{\code{startfill}:}{Object of class \code{"integer"}  the
  default value for the fill color}
    \item{\code{startlty}:}{Object of class \code{"integer"}  the
  initial/default value for the line type}
    \item{\code{startfont}:}{Object of class \code{"integer"}  the
  default setting for the font.}
    \item{\code{startgamma}:}{Object of class \code{"numeric"} the
  default value for the gamma correction. }
    \item{\code{deviceSpecific}:}{a reference to the
      \code{RDevDescMethodsPtr} object in C that contains the collection
      of R functions that implement this C-level graphics device.
      One can coerce this to an RDevDescM
         }
    \item{\code{displayListOn}:}{Object of class \code{"Rboolean"}  }
    \item{\code{canGenMouseDown}:}{Object of class \code{"Rboolean"}  }
    \item{\code{canGenMouseMove}:}{Object of class \code{"Rboolean"}  }
    \item{\code{canGenMouseUp}:}{Object of class \code{"Rboolean"}  }
    \item{\code{canGenKeybd}:}{Object of class \code{"Rboolean"}  }
    \item{\code{gettingEvent}:}{Object of class \code{"Rboolean"}  }
    \item{\code{hasTextUTF8}:}{Object of class \code{"Rboolean"}  }
    \item{\code{wantSymbolUTF8}:}{Object of class \code{"Rboolean"}  }
    \item{\code{useRotatedTextInContour}:}{Object of class \code{"Rboolean"}  }
  }
}
\section{Extends}{
Class \code{"\link[RAutoGenRunTime]{CStruct-class}"}, directly.
}
\section{Methods}{
  \describe{
    \item{"[["}{\code{signature(x = "DevDescPtr")}: these methods
     allow one to query and set the values of the individual fiels}
    \item{"\$"}{\code{signature(x = "DevDescPtr")}: }
    \item{"[[<-"}{\code{signature(x = "DevDescPtr")}: }
    \item{"\$<-"}{\code{signature(x = "DevDescPtr")}: }
    \item{"as"}{\code{signature(x = "DevDescPtr")}: this method allows
      us to convert the C-level reference to an R-level \code{DevDesc}
      object using regular coercion, i.e. \code{as(dev, "DevDesc")}.        }
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
showClass("DevDesc")
}
\keyword{classes}
