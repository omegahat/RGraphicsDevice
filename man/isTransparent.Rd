\name{isTransparent}
%\Rdversion{1.1}
\alias{isTransparent}
\title{Test whether a integer corresponds to the color 'transparent'}
\description{
This function takes an R graphics engine color specified as an integer
and determines whether this is actually the special color 'transparent'.
}
\usage{
isTransparent(col)
}
\arguments{
  \item{col}{an integer typically from either the \code{col} or \code{fill}
    field in an instance of the \code{\linkS4class{R_GE_gcontextPtr}} type.
  }
}
\details{
}
\value{
A logical value. This is \code{TRUE} if the color is
the special transparent color.
}
\references{\dQuote{The R Internals Manual}, R Development Core Team.}
\author{Duncan Temple Lang}

\seealso{\code{\linkS4class{R_GE_gcontextPtr}}}
\examples{
  isTransparent(-16776961)

  isTransparent(as("transparent", "RGBInt"))
  isTransparent(as("transparent", "RGBInt"))
}
\keyword{device}
