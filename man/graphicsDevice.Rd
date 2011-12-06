\name{graphicsDevice}
%\Rdversion{1.1}
\alias{graphicsDevice}
\alias{graphicsDevice,ANY,ANY,ANY,ANY,ANY,RDevDescMethods-method}
\alias{graphicsDevice,RDevDescMethods,ANY,ANY,ANY,ANY,ANY-method}
\alias{graphicsDevice,ANY,ANY,ANY,ANY,ANY,list-method}
\alias{graphicsDevice,ANY,list-method}

\title{Instantiate Graphics Device implemented with R functions}
\description{
  This is the general function and associated R methods to create
  a graphics device whose primitive methods are implemented
  via R functions.  
}
\usage{
graphicsDevice(name, dim = c(1024, 768), col = "black", fill = "transparent",
                ps = 10, ..., funcs = list(...), ipr = rep(1/72.27, 2))
}
\arguments{
  \item{name}{either the name of the device or a
    \code{\link{RDevDescMethods-class}} object.
    If the latter is suplied, we compute the name by calling the
    \code{\link{deviceName}} function and invoking the method
    corresponding to this type.
    The resulting name is used in the \code{.Devices} list.
    This name is often a general description of the type of the device,
    i.e. not a desciption of the particular instance, although it can be
    as this would make it easier to identify the individual devices in
    the \code{.Devices} list.}
  \item{dim}{a numeric/integer vector giving the width and height of the
    device.}
  \item{col}{the default/starting drawing color}
  \item{fill}{the default/starting  color used to fill rectangles,
    circles, etc.}
  \item{ps}{the initial point size for the default font}
  \item{\dots}{zero or more name = value pairs which are used as 
     functions implementing the graphics device methods.
     The names must (partially) match the slot names of the \code{\link{RDevDescMethods-class}} class.}
  \item{funcs}{this is an alternative way to specify functions that implement the graphics device methods.
    We use this when the functions are already in a list and it is akward to specify them
    via the \dots mechanism. This can be }
  \item{ipr}{a numeric vector of length 2 giving the number if inches
    per raster/pixel for each of the horizontal and vertical dimensions.}
}

\value{
  An object of class \code{\link{DevDescPtr-class}}.
}
\references{
\dQuote{The R Internals Manual}, R Development Core Team.
}
\author{
Duncan Temple Lang
}
\seealso{
   \code{\link{RDevDescMethods-class}}
}
\examples{
  devFuns = dummyDevice()
  dev = graphicsDevice("MyDummyDevice", funcs = devFuns)
  .Devices

  dev$right
  dev$right = 1000
  dev$bottom = 800

    # All important to get the plot region with adequate margins
    # and basically get anything working.
  dev$ipr = rep(1/72.27, 2)
  dev$right
  dev$ipr

  as(dev, "DevDesc")

  plot(1:10)

  dev.off()

    # warnings are coming from the lack of a return from functions that
    #

  devFuns = dummyDevice(initDevice = function(dev) {
                                        dev$ipr = rep(1/72.27, 2)
                                        dev$cra = rep(c(6, 13)) * 10/12
                                     },
                        GEInitDevice = function(dev) {
                           gedev <- as(dev, "GEDevDescPtr")
                           gedev$recordGraphics = TRUE
                           gedev$ask = TRUE
                         })

  dev = graphicsDevice("MyDummyDevice", funcs = devFuns)
}
\keyword{hplot}

