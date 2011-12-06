\name{GE_ROUND_CAP}
%\Rdversion{1.1}
\alias{GE_BEVEL_JOIN}
\alias{GE_BUTT_CAP}
\alias{GE_MITRE_JOIN}
\alias{GE_ROUND_CAP}
\alias{GE_ROUND_JOIN}
\alias{GE_SQUARE_CAP}

\docType{data}
\title{Symbolic Constants for line endings and line joins}
\description{
These R values are symbolic constants
that provide conceptual names for specific values used
in C code. These control the appearance of the join between two lines
rendered on a graphics device and also how the end of a line
appears.

These symbolic constants correspond to enumerated constants in C code.
}
\usage{GE_BEVEL_JOIN}
\format{
 These are objects of class \code{R_GE_lineend} or \code{R_GE_linejoin}.
}
\source{
The R Graphics Engine code.
}
\references{}
\examples{
  line = function(x1, y1, x2, y2, gcontext, dev) {
           # Use the value
      if(gcontext@lend == GE_ROUND_CAP) {
         
      } else if(gcontext@lend == GE_BUTT_CAP) {

      } else if(gcontext@lend == GE_SQUARE_CAP) {

      }

          # Use the name.
      switch(names(gcontext@ljoin),
             "GE_BEVEL_JOIN" = "bevel",
             "GE_MITRE_JOIN" = "mitre",
             "GE_ROUND_JOIN" = "round")
  }
}
\keyword{datasets}
