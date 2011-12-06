setClass("GEDevDescPtr", contains = 'RC++StructReference', prototype = list(classes = 'GEDevDescPtr'))

setMethod("$<-", "GEDevDescPtr",
          function(x, name, value) {
            sym = paste("R_GEDevDescPtr_set_", name, sep = "")
            if(!is.loaded(sym, PACKAGE = "RGraphicsDevice"))
              stop("No set routine for ", name, " for GEDevDescPtr")
            .Call(sym, x, value)
            x
          })
         

setAs("DevDescPtr", "GEDevDescPtr",
       function(from)
           .Call("R_desc2GEDesc", from))


setMethod("$", "GEDevDescPtr",
          function(x, name) {
            sym = paste("R_GEDevDescPtr_get_", name, sep = "")
            if(!is.loaded(sym, PACKAGE = "RGraphicsDevice"))
              stop("No get routine for ", name, " for GEDevDescPtr")
            .Call(sym, x)
          })
