colors <- c(
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

get_first_two <- function(clrs) clrs[1:2]

value <- function(resistor_colors)
  resistor_colors |> 
    get_first_two()  |>
    sapply(\(c) colors[[c]]) |>
    paste(collapse = "") |>
    as.numeric()
