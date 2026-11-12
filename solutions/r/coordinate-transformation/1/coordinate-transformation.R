scale <- function(point, s) 
  point * s

translate <- function(point, ...) 
  point + c(...)

transform2d <- function(dx, dy, s = 1) {
  return(
    function(point) 
      translate(point, dx, dy) |> scale(s)
  )
}

transform3d <- function(dx, dy, dz, s = 1) {
  return(
    function(point) 
      translate(point, dx, dy, dz) |> scale(s)
  )
}
