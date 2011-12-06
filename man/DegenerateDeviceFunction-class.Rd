\name{DegenerateDeviceFunction-class}
\Rdversion{1.1}
\docType{class}
\alias{DegenerateDeviceFunction-class}
\alias{FunctionOrNULL-class}

\title{Represents a proxy or stand-in function generated as a default}
\description{
  This class is primarily used to label functions that we generate
  as a default implementation of an R function. This allows us to test
  whether the function has been provided by the user or is just a
  degenerate function.}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("DegenerateDeviceFunction", functionObject)}.
}
\section{Slots}{
  \describe{
    \item{\code{.Data}:}{Object of class \code{"function"}}
  }
}
\section{Extends}{
Class \code{"\linkS4class{function}"}, from data part.
Class \code{"\linkS4class{OptionalFunction}"}, by class "function", distance 2.
Class \code{"\linkS4class{PossibleMethod}"}, by class "function", distance 2.
Class \code{"\linkS4class{FunctionOrNULL}"}, by class "function", distance 2.
}
\section{Methods}{
No methods defined with class "DegenerateDeviceFunction" in the signature.
}
\author{Duncan Temple Lang}

%\seealso{}
\examples{
showClass("DegenerateDeviceFunction")
}
\keyword{classes}
