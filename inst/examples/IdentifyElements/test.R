library(RGraphicsDevice)
source("device.R")
# Compare with tests/sample.R in this package. That succeeds.
# Do we need to fill in more methods?
dev = metaDev()
library(lattice)
print(xyplot( mpg ~ wt, mtcars))
dev.off()


