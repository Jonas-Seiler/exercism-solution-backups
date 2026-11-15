color_code_map <- c(
  black  = 0,
  brown  = 1,
  red    = 2,
  orange = 3,
  yellow = 4,
  green  = 5,
  blue   = 6,
  violet = 7,
  grey   = 8,
  white  = 9
)

colors <- color_code_map |> names()

color_code <- function(color)
  color_code_map[[color]]
