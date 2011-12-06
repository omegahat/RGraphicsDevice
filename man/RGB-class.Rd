\name{RGB-class}
\Rdversion{1.1}
\docType{class}
\alias{RGB-class}

\title{Representation of a color as Red, Blue and Green components}
\description{
 This is a simple class that labels a string as being a color of the
 form  # Red, Green and Blue components in hexadecimal form.
 We use this class to provide methods to convert between different
 representations.
}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("RGB", "#RRGGBB")}.
}
\section{Slots}{
  \describe{
    \item{\code{.Data}:}{Object of class \code{"character"}}
  }
}
\section{Extends}{
Class \code{"\linkS4class{character}"}, from data part.
Class \code{"\linkS4class{vector}"}, by class "character", distance 2.
Class \code{"\linkS4class{data.frameRowLabels}"}, by class "character", distance 2.
Class \code{"\linkS4class{EnumerationValue}"}, by class "character", distance 2.
}
\section{Methods}{
No methods defined with class "RGB" in the signature.
}
\author{Duncan Temple Lang}
%\seealso{}
\examples{
showClass("RGB")
}
\keyword{classes}
