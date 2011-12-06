# See ../inst/doc/implementation.xml
# not this file.

###
##  I have manually modified how startfill and startcol are handled
#   We treat them like they are double as we use unsigned int values
#   to set them from as(, "RGBInt").  We have to sort this out later.
#   
#   I have also added initDevice as a slot in RDevDescMethods so that we 
#   call an R function to do the initialization before registering
#   the R device. 
##

library(RGCCTranslationUnit)
tu = parseTU("TU/gd.c.t00.tu")
ds = getDataStructures(tu) # c("GraphicsEngine", "GraphicsDevice"))

names(ds) 

  # The following returns a ResolvedTypeReference
DevDesc = resolveType(ds$DevDesc, tu)
  # so we resolve it again to get the StructDefinition
a = DevDesc = resolveType(DevDesc, tu)

isFunPtr = sapply(a@fields, function(x) class(x@type)) == "FunctionPointer"
funPtrs = names(a@fields)[isFunPtr]
funs =  a@fields[isFunPtr]ovalidity = structure(sapply(funs, function(x) length(x@type@parameters)), names = names(funs))
validityCode = paste("validateRDevDescMethods =\n function(object)\n{\n", 
    " ans = c(",
    paste(sprintf("            checkNumFunParams(object@%s, %d, %s)", names(funs), validity, sQuote(names(funs))), collapse = ",\n"),
    "     )",
    "  if(length(ans))\n\tans\n  else\n\t TRUE",
    "\n}\n", 
    "setValidity('RDevDescMethods', validateRDevDescMethods)",
  sep = "\n")


map = list("Rboolean" = list(convertValueToR = function(name, param, ...)
                                                     sprintf("ScalarLogical(%s)", name),
                             convertRValue = function(to, name, parm, ...) {
                                                    sprintf("%s = LOGICAL(%s)[0];", to, name)
                                                  },
                             coerceRValue = function(name, parm, ...) {
                                                    sprintf("as.logical(%s)", name)
                                               }),
           "SEXP" = list(setNativeValue = function(type, to, name, ...) {

                                         to = paste(to, collapse = " -> ")
                                         txt = c(sprintf("if(%s && %s != R_NilValue)", to, to),
                                                 sprintf("   R_ReleaseObject(%s);", to),
                                                 sprintf("%s = %s;", to, name),
                                                 sprintf("if(%s && %s != R_NilValue)", to, to),
                                                 sprintf("   R_PreserveObject(%s);", to)
                                                )
                                          paste(txt, collapse = "\n       ")
                                         }
                          ))


#sexp = resolveType(ds$SEXP, tu)
# Make the types of the function pointers a RFunctionOrNULL
# and arrange to have the R type be FunctionOrNULL so we can ensure
# that the slots are either NULL or a function and not arbitrary R objects.
setClass("RFunctionOrNULL", contains = "SEXP")
setMethod("getRTypeName", "RFunctionOrNULL",
           function(type, typeMap = list(), ...) 
              "FunctionOrNULL"
          )
setMethod("coerceRValue", c(parm =  "RFunctionOrNULL"),
          function (name, parm, caller = NULL, typeMap = list(), helperInfo = NULL) 
              sprintf("as(%s, 'FunctionOrNULL')", name)
          )


fields = lapply(funs, function(x) {
                           x@type = new("RFunctionOrNULL") 
                           x
                        })
devDescMethods = new("TypedefDefinition", 
                     name = "RDevDescMethods",
                     type = new("StructDefinition", 
                                name = "RDevDescMethods",
                                fields = fields))


if(FALSE) {
# To set the fields in the RDevDescMethods from an the
cat("void",
    "setRMethods(RDevDescMethods *dev, SEXP methods)",
    "{",
 paste(sprintf(
         'tmp = GET_SLOT(methods, Rf_install("%s"));\n    if(tmp != R_NilValue)\n        R_PreserveObject(dev-> %s = tmp);\n    else\n        dev-> %s = NULL;\n', funPtrs, funPtrs, funPtrs),
      collapse = "\n    "), "\n}\n", sep = "\n")
}


a@fields$deviceSpecific@type = new("PointerType", type = devDescMethods, depth = 1L, typeName = "RDevDescMethods")

  # Drop the function pointers
a@fields = a@fields[!isFunPtr]
a@fields = a@fields[ - match("reserved", names(a@fields)) ]



proxyNames = structure(paste("R", names(funs), sep = "_"), names = names(funs))
code = mapply(createProxyRCall,
               lapply(funs, slot, "type"),
               proxyNames,
               paste("((RDevDescMethods*) ( r", sapply(funs, function(x) length(x@type@parameters)), 
                                 "->deviceSpecific))->", names(funs), sep = ""))

cat(sapply(code, RGCCTranslationUnit:::getDeclaration), sep = "\n", file = "src/proxyDecls.h")



code = generateStructInterface(a, DefinitionContainer(tu), typeMap = map)

devDescIface = generateStructInterface(devDescMethods, DefinitionContainer(tu), typeMap = map)


if(FALSE) {

if(TRUE) {
writeCode(code, "native", "src/RDevDesc.c", 
           includes = dQuote("RGraphicsDevice.h"))

writeCode(code, "r", "R/RDevDesc.R") 

writeCode(devDescIface, "native", "src/RDevDescMethods.c", includes = dQuote("RGraphicsDevice.h"))
writeCode(devDescIface, "r", "R/devDescMethods.R")
}


gcontext = resolveType(resolveType(ds$R_GE_gcontext, tu), tu)
gcontext.code = generateStructInterface(gcontext, DefinitionContainer(tu))
writeCode(gcontext.code, "native", "src/RGContext.c", 
           includes = dQuote("RGraphicsDevice.h"))
writeCode(gcontext.code, "r", "R/GContext.R") 

writeCode(gcontext@fields$lend@type, "r", "R/lend.R")
writeCode(gcontext@fields$ljoin@type, "r", "R/ljoin.R")
}
