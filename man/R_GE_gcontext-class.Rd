\name{R_GE_gcontext-class}
\docType{class}
\alias{R_GE_gcontext-class}
\alias{R_GE_gcontextPtr-class}
\alias{[[,R_GE_gcontextPtr,ANY-method}
\alias{$,R_GE_gcontextPtr-method}
\alias{[[<-,R_GE_gcontextPtr,ANY-method}
\alias{$<-,R_GE_gcontextPtr-method}
\alias{names,R_GE_gcontextPtr-method} 
\alias{[[,R_GE_gcontextPtr,ANY,ANY-method}

\title{Information about the current graphics settings/context}
\description{
  This is a one-to-one mapping of the C-level data structure used
  in R graphics devices and passed to device routines and it
  describes the current settings or state of the graphics "pen".
  It provides alues for the color, the background color, the line width,
  and line type, how lines are joined and ended, the character expansion
  factor, the size of a the font and line height, and font information.
  These are set and reset frequently and are stored in this context
  object rather than "globally" (across calls) within the device.
}
\section{Objects from the Class}{
  We rarely construct objects of this type directly in R
  but rather are passed them in calls to R functions from the
  graphics engine. These functions  are those implementing R graphics
  device facilities.

  We might explicitly coerce the C-level reference to an R structure
  to have access to all of the fields in a single R object using
  \code{as(obj, "R_GE_gcontext")}. However,
  this is not necessary as we can access the individual fields as
  \code{obj$col} as easily as \code{obj@col}.  There may be marginal
  benefits in speed if one is accessing the values of all the fields
  many, many times within the single R function call. But this requires
  measurement as the slot access of an S4 object may incur overheads
  comparable or exceeding that of the method dispatch and C interface.
}
\section{Slots}{
	 \describe{
    \item{\code{col}:}{Object of class \code{"integer"} the color to
  draw text, lines, paths. This is the "foreground" color.}
    \item{\code{fill}:}{Object of class \code{"integer"}  the background
  color used to fill regions such as rectangles, circles and polygons}
    \item{\code{gamma}:}{Object of class \code{"numeric"} the  }
    \item{\code{lwd}:}{Object of class \code{"numeric"} the width of a
  rendered line, typically in units of 1/96.}
    \item{\code{lty}:}{Object of class \code{"integer"} the type of
  line, e.g. solid, dotted, dashed }
    \item{\code{lend}:}{Object of class \code{"R_GE_lineend"}  one of
  \code{ROUND_CAP}, \code{BUTT_CAP} and \code{SQUARE_CAP} (currently integers at present and
  not enumeration types) }
    \item{\code{ljoin}:}{Object of class \code{"R_GE_linejoin"} how
  lines are joined. One of \code{ROUND_JOIN}, \code{MITRE_JOIN},
  \code{BEVEL_JOIN}. (Currently these are integers. You should coerce them to \code{R_GE_linejoin}.) }
    \item{\code{lmitre}:}{Object of class \code{"numeric"}  controls
  mitreing of lines}
    \item{\code{cex}:}{Object of class \code{"numeric"}  character
  expansion factor with \code{font size = fontsize * cex}}
    \item{\code{ps}:}{Object of class \code{"numeric"}  font size in points}
    \item{\code{lineheight}:}{Object of class \code{"numeric"}  height
  of a line which should be multiplied by the font size}
    \item{\code{fontface}:}{Object of class \code{"integer"}  font face
  such as  plain, italic, bold. These are given by integers.}
    \item{\code{fontfamily}:}{Object of class \code{"character"}  a
  character vector currently with 201 elements each of which is a single
  character, i.e. string of length 1. But this is may become a single
  string with 201 characters.}
  }
}
\section{Extends}{
Class \code{"\link[RAutoGenRunTime]{CStruct-class}"}, directly.
}
\section{Methods}{
No methods defined with class "R_GE_gcontext" in the signature.
}
\references{
\dQuote{The R Internals Manual}, R Development Core Team.  
}
\author{Duncan Temple Lang}

\seealso{
  \code{\link{graphicsDevice}}
  \code{\link{RDevDescMethods-class}}  
}
\examples{
showClass("R_GE_gcontext")
}
\keyword{classes}
