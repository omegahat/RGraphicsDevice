test =
function(expr)
{
  dev = pieceDevice()
  on.exit(dev.off())
  ans = eval(expr, sys.parent())
#  expr
  if(is(ans, "trellis"))
    print(ans)
  dev.off()
  on.exit()
  
  ans = dev$pages()
  if(length(ans) == 1)
    ans[[1]]
  else
    ans
}

