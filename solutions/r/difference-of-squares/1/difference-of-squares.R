difference_of_squares <- function(natural_number) {
  range <- 1:natural_number
  return(sum(range)^2 - sum(range^2))
}
