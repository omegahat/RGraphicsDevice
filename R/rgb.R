setClass("RGB", contains = "character")
setAs("numeric", "RGB",
       function(from) {
          #structure(.Call("R_col2name", as.numeric(from)), class = "RGB")
          new("RGB", .Call("R_col2name", as.numeric(from)))
       })



setClass("RGBInt", contains = "numeric")
setAs("character", "RGBInt",
       function(from) {
          # structure(.Call("R_str2col", from), class = "RGB")
          new("RGBInt", .Call("R_str2col", from))
       })

setAs("numeric", "RGBInt",
        function(from)
            new("RGBInt", from))


isTransparent =
function(col)
{
  as(col, "RGB") == "transparent"
}

# as(as("red", "RGBInt"), "RGB")
# as(as("#FF0000", "RGBInt"), "RGB")
# as(as("#FF000088", "RGBInt"), "RGB")
