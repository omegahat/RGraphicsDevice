
setGeneric("graphicsDevice",
            function(name, dim = c(1024, 768), col = "black", fill = "transparent", ps = 10, ..., funcs = list(...), ipr = rep(1/72.27, 2))
               standardGeneric("graphicsDevice"))

setMethod("graphicsDevice", c(funcs = "RDevDescMethods"),
           function(name, dim = c(1024, 768), col = "black", fill = "transparent", ps = 10, ..., funcs = list(...), ipr = rep(1/72.27, 2)) {

	        tmp = validObject(funcs)
	        if(!is.logical(tmp))
                    stop("Invalid functions in device: ", tmp)

                dim = as.integer(dim)
                if(length(dim) == 0)
                   stop("empty dimension")
                
                if(length(dim) < 2)
                  dim = rep(dim, 2)
                
                col = as(col, "RGBInt")
                fill = as(fill, "RGBInt")

                ipr = as.numeric(ipr)
                if(length(ipr) < 2)
                  stop("Need 2 values for ipr - got ", length(ipr))
                
	        dev = .Call("R_createGraphicsDevice",  funcs, as.character(name), dim, col, fill, as.integer(ps),
                             list(funcs@initDevice, funcs@GEInitDevice), ipr)

                if(is.null(dev$deviceSpecific$state))
                  dev$deviceSpecific$state = funcs
                
                
                dev
           })

  # different parameter than the one above.
setMethod("graphicsDevice", c(name = "RDevDescMethods"),
           function(name, dim = c(1024, 768), col = "black", fill = "transparent", ps = 10, ..., funcs = list(...), ipr = rep(1/72.27, 2)) {
               graphicsDevice(deviceName(name), dim, col, fill, ps, ..., funcs = name, ipr = ipr)
           })

setMethod("graphicsDevice", c(funcs = "list"),
           function(name, dim = c(1024, 768), col = "black", fill = "transparent", ps = 10, ..., funcs = list(...), ipr = rep(1/72.27, 2)) {
               graphicsDevice(name, dim, col, fill, ps, funcs = as(funcs, "RDevDescMethods"), ipr = ipr, ...)
           })

 # Convert a list of functions into an instance of RDevDescMethods
setAs("list", "RDevDescMethods",
       function(from) {
        obj = new("RDevDescMethods")
        sapply(names(from), 
                function(id) {
                     slot(obj, id) <<- from[[id]]
                })              

        tmp = validObject(obj)
        if(!is.logical(tmp))
          stop("Invalid functions in device: ", tmp)
        obj
       })


setGeneric("deviceName",
            function(x, ...)
                standardGeneric("deviceName"))

setMethod("deviceName", "RDevDescMethods",
           function(x, ...) {
             "R-function device"
           })

setMethod("deviceName", "ANY",
           function(x, ...) {
             "R-function device"
           })
          


makeGraphicsDeviceObject =
function(..., funcs = list(...), obj = new("RDevDescMethods"), ensureMetric = TRUE)
{
  args = list(...)
  if(!missing(funcs) && length(args))  
        # merge the ... with funcs
     funcs[ names(args) ] = args

  i = pmatch(names(funcs), slotNames(obj))
  names(funcs) = slotNames(obj)[i]
  if(any(is.na(i))) {
    warning("unrecognized slot(s): ", names(funcs)[is.na(i)])
    funcs = funcs[!is.na(i)]
  }
  
  sapply(names(funcs), 
           function(id) {
              val = funcs[[id]]
              val = as(val, "FunctionOrNULL")
              
              slot(obj, id) <<- val
           })


  if(ensureMetric && (is.null(obj@metricInfo) || is(obj@metricInfo, "DegenerateDeviceFunction"))) {
       obj@metricInfo = function(char, gc, ascent, descent, width, dev) {
         width[1] = gc$ps * gc$cex
         ascent[1] = 1
         descent[1] = .25
       }    
   }

  if(ensureMetric && (is.null(obj@strWidth) || is(obj@strWidth, "DegenerateDeviceFunction"))) {
       obj@strWidth = function(str, gc, dev) {
                         gc$cex * gc$ps * nchar(str)
                      }
  }
  
  tmp = validObject(obj)
  if(!is.logical(tmp))
      stop(tmp)

  

  obj
}

makeBodies = 
function(fun = quote(print(x)), names = slotNames("RDevDescMethods"), substitute = TRUE)
{
  bodies = lapply(names, 
                   function(x) {
                      if(substitute && length(fun) > 1)
                         fun[[2]] = x
                      fun
                   })
  names(bodies) = names
  bodies
}

simpleFun = 
function()
{
  f = function(...)  {}
  environment(f) = globalenv()
  f
}

setClass("DegenerateDeviceFunction", contains = "function")

dummyDevice = 
function(..., bodies = makeBodies(names = slotNames(obj)), sample = NULL, obj = new("RDevDescMethods"))
{
 # funNames = slotNames(obj)
  funNames = names(bodies)

  if(is.null(sample)) {
         # we don't do this for the entire set of slots in obj as they may not be FunctionORNull
    def = getClass(class(obj))
    i = sapply(def@slots, function(x) x %in% c("FunctionOrNULL", "ANY"))
    funcs = structure(replicate(sum(i), NULL), names = slotNames(obj)[i])
  } else
    funcs = lapply(bodies,
                     function(b) {
                        body(sample) = b
                        new("DegenerateDeviceFunction", sample)
                     })

  funcs$size = function(left, right, bottom, top, dev) {
       right[1] = dev$right
       bottom[1] = dev$bottom
  }

  makeGraphicsDeviceObject(..., funcs = funcs, obj = obj)
}
