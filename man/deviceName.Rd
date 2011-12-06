\name{deviceName}
%\Rdversion{1.1}
\alias{deviceName}
\alias{deviceName,ANY-method}
\alias{deviceName,RDevDescMethods-method}

\title{Get the description for a type of graphics device}
\description{
 This function and its methods allow us to obtain
 a description or name of a graphics device which can be used
 as the string the .Devices list describing the device.

 Programmers can provide a  method for  a new 
 class of graphics device function list, i.e. a sub-class of
 \code{\linkS4class{RDevDescMethods}}.
}
\usage{
deviceName(x, ...)
}
\arguments{
  \item{x}{the graphics device details, typically of class
  \code{\linkS4class{RDevDescMethods}} or a sub-class thereof. }
  \item{\dots}{additional parameters for methods}
}
\value{
  A character vector of length 1.
}
\author{Duncan Temple Lang}
\note{
 When dealing with graphics devices implemented with R functions (via this package),
 we typically have a single class (DevDesc) of graphics device instance.
 Similarly, we can use the single generic \code{\linkS4class{RDevDescMethods}} class
 and specify different functions for different types of devices.
 Alternatively, we can define new sub-classes of \code{\linkS4class{RDevDescMethods}}
 which only differ by providing a class identifier to identify the type of device.
 We can then define a method for \code{deviceName} for such new sub-classes.
}

\seealso{
 \code{\link{graphicsDevice}}
 \code{makeGraphicsDeviceObject} which is not exported.
}
\examples{
 
  setClass("RJSCanvasDevMethods", contains = "RDevDescMethods")
  setMethod("deviceName", "RJSCanvasDevMethods",
              function(x) 
                 "R JavaScript Canvas")

  m = new("RJSCanvasDevMethods")
  deviceName(m)

  dev = graphicsDevice(m)
  .Devices
}
\keyword{device}
\keyword{programming}
