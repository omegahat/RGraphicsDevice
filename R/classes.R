  # Manually created.
setOldClass("NativeSymbol")
setOldClass("NativeSymbolInfo")
setClassUnion("FunctionOrNULL", c("function", "NULL", "NativeSymbol"))

setAs("character", "FunctionOrNULL", function(from) getNativeSymbolInfo(from)$address)
setAs("NativeSymbolInfo", "FunctionOrNULL", function(from) from$address)

checkNumFunParams =
function(fun, numParams, name)
{
  if(is.null(fun) || is(fun, "NativeSymbol"))
     return(character())

  
  if(!is.function(fun))
      return(name, " must be a function, not a ", class(fun))
  
  args = formals(fun)
  if(length(args) >= numParams || "..." %in% names(args))
    return(character())

  paste(name, "has", length(args), "parameters, but needs to accept", numParams, "values")
}


