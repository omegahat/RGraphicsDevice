
checkFuns =
function(filename)
{
  toc = ptoc(filename)
  toc = subset(toc, types == "function")
  
  ans = lapply(as.character(toc$varName),
                function(x)
                   setdiff(findGlobals(get(x), merge = FALSE)$var, c("[[", "$")))
  
  names(ans) = as.character(toc$varName)
  ans[sapply(ans, length) > 0]
}
