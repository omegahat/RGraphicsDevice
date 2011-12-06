\name{dummyDevice}
%\Rdversion{1.1}
\alias{dummyDevice}
\title{
 Create a degenerate collection of R-level graphics device functions.
}
\description{
 This function creates a collection of functions that can be used
 to implement an R-level graphics device.  These functions don't do much
 other than, by default, announce they have been called by printing the name of the
 corresponding graphics primitive (e.g. activate, line, circle).
 The action can be customized using the \code{bodies} parameter.
 
 We use this to a) test the functionality of the package, and b)
 to provide a basic skeleton of a device which programmers can
 override and customize by providing replacements for particular
 graphical primitive operations.  In other words, we can
 obtain the dummy device object and then set any of its slots
 to provide our own implementation.

 This function does not create the
 graphics device (see \code{\link{graphicsDevice}}) but rather
 an object that is used to represent the R functions that
 an R-level graphics device will be given when it is instantiated.

 The default size function sets the value of the right and bottom to those
 in the device.

 Some of the graphical primitive functions are expected to return a value.
 These functions do not and so warnings about coercion generating \code{NA}
 values may occur when you use these. These are not fatal.
}
\usage{
dummyDevice(..., bodies = makeBodies(names = slotNames(obj)),
            sample = NULL, obj = new("RDevDescMethods"))
}
\arguments{
  \item{\dots}{\code{name = function} pairs that specify our own
   implementations of particular graphical operations.}
  \item{bodies}{a list giving the bodies. We create the template or
 proxy functions for each of the specified names which is one for each
 of the elements in the \code{obj} object. (This should be just the
 elements that are functions)}
  \item{sample}{a sample function that is copied and its body modified.}
  \item{obj}{an object of class \code{\link{RDevDescMethods-class}}
   which is the object that provides the R functions that implement the
   methods  for the graphics device.}
}
\value{
 An object of class \code{\link{RDevDescMethods-class}}.
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
  funs = dummyDevice()
  dev = graphicsDevice(funs)
  .Devices

      # to call browser in each function. This will get very tedious.
  funs = dummyDevice( bodies = RGraphicsDevice:::makeBodies(quote(browser())))
\dontrun{
  dev = graphicsDevice(funs)
}

  funs = dummyDevice(activate = function(dev) { dev$right = 1000; dev$bottom = 600})
  dev = graphicsDevice(funs)

  funs = dummyDevice(line = function(x1, y1, x2, y2, gcontext, dev) browser() )
  dev = graphicsDevice(funs)

  funs = dummyDevice()
  funs@activate = function(dev) { dev$right = 1000; dev$bottom = 600}
  dev = graphicsDevice(funs)
}
\keyword{hplot}
\keyword{device}
\keyword{programming}
