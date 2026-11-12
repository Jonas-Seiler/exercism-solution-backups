resistor_bands <- c(
  black = 0,
  brown = 1,
  red = 2,
  orange = 3,
  yellow = 4,
  green = 5,
  blue = 6,
  violet = 7,
  grey = 8,
  white = 9
)

band_value <- function(band) {
  return(resistor_bands[band] |> unname())
}

two_band_value <- function(bands) {
  digits <- band_value(bands)
  return((digits * c(10, 1)) |> sum())
}

ohms <- function(bands) {
  digits <- band_value(bands)
  significant <- (digits * c(10, 1, 0)) |> sum()
  exponent <- tail(digits, 1)
  return(significant * 10^exponent)
}
