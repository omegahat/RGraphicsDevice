\name{GEDevDescPtr-class}
\Rdversion{1.1}
\docType{class}
\alias{GEDevDescPtr-class}
\alias{$,GEDevDescPtr-method}
\alias{$<-,GEDevDescPtr-method}

\title{Class "GEDevDescPtr"}
\description{
  This class represents a reference to a C-level \code{GEDevDesc} object.
  We treat this mainly as an opaque data type.
  However, we can access its methods and set individual values.
}
\section{Objects from the Class}{
Instances of this type really should be generated from C code.
}
\section{Slots}{
  \describe{
    \item{\code{ref}:}{Object of class \code{"externalptr"} the address
      of the C data structure}
    \item{\code{classes}:}{Object of class \code{"character"} the names
      of the classes this implements }
  }
}
\section{Extends}{
Class \code{"\linkS4class{RC++StructReference}"}, directly.
Class \code{"\linkS4class{RCStructReference}"}, by class "RC++StructReference", distance 2.
Class \code{"\linkS4class{RC++Reference}"}, by class "RC++StructReference", distance 3.
}
\section{Methods}{
  \describe{
    \item{$}{\code{signature(x = "GEDevDescPtr")}:  }
    \item{$<-}{\code{signature(x = "GEDevDescPtr")}: }
	 }
}
\references{

}
\author{
Duncan Temple Lang
}

\seealso{

}
\examples{
showClass("GEDevDescPtr")
}
\keyword{classes}
