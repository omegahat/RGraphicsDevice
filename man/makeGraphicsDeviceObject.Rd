\name{makeGraphicsDeviceObject}
%\Rdversion{1.1}
\alias{makeGraphicsDeviceObject}
\title{Constructor for an RDevDescMethods object}
\description{
 This function acts as a constructor for an
 \code{\link{RDevDescMethods-class}}
 object which collects functions together  that collectively implement
 an R graphics device. The resulting S4 object can then be passed
 to \code{\link{graphicsDevice}} to create an active graphics device on
 which we can draw R graphics.
 

 This function takes the functions specified
 either individually as \code{name = function} (via \dots) or as an existing list
 of named elements (via \code{funcs}). It then assigns these functions to the corresponding
 slots in the \code{\link{RDevDescMethods-class}} object.
 One can use the \dots and the \code{funcs} parameters together and
 those functions specified in \dots will be merged with those in \code{funcs}.

 By default, the function creates and populates
 its own instance of the \code{\link{RDevDescMethods-class}} object that
 is returned. However, one can pass an already created object
 of class \code{\link{RDevDescMethods-class}}  or a sub-class.
 This allows this function to be used for initializing sub-classes.
 The function is sufficiently general that it uses run-time slot access
 so it naturally handles sub-classes and indeed objects entirely
 different classes.
}
\usage{
makeGraphicsDeviceObject(..., funcs = list(...),
                          obj = new("RDevDescMethods"),
                          ensureMetric = TRUE)
}
\arguments{
  \item{\dots}{a collection of \code{name = function} pairs specifying
 the  functions to be inserted into the corresponding slot in
 \code{obj}.  The slot names are matched using partial matching \code{\link[base]{pmatch}}.
}
  \item{funcs}{
    a named list of functions. This is an alternative to the \dots
    specification that is convenient when the functions have already
    been collected into a list and it is akward to specify them via the
    \dots parameter, e.g. via \code{\link[base]{do.call}}.
}
  \item{obj}{the object whose slots are to be populated by the functions
             specified via \dots and \code{funcs}.  This is typically an
	     object of class \code{\link{RDevDescMethods-class}} or a sub-class.
	   }
   \item{ensureMetric}{a logical value that controls whether we force
     the insertion of a default strWidth and metricInfo
    method that compute sensible values, if these are not specified by
    the user, i.e. if the default implementations are there from
    \code{dummyDevice} or \code{NULL}.
  }
}

\value{
 \code{obj} with some of its slots updated.
}
\references{
\dQuote{The R Internals Manual}, R Development Core Team.
}
\author{
 Duncan Temple Lang
}

\seealso{
  \code{\link{RDevDescMethods-class}}
  \code{\link{graphicsDevice}}  
}
\examples{
  o = makeGraphicsDeviceObject()
  o@strWidth = function(str, gcontext, dev) { nchar(str) * 12}
}
\keyword{hplot}
\keyword{device}
\keyword{programming}
