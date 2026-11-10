message <- function(msg) {
  split <- 
    strsplit(msg, ": ") |> 
      unlist() |> 
      trimws()
  return(split[2])
}

log_level <- function(msg) {
  split <- 
    strsplit(msg, ": ") |>
      unlist() |>
      trimws() |>
      tolower()
  split <- substr(split, 2, nchar(split) - 1)
  return(split[1])
}

reformat <- function(msg) {
  return(sprintf("%s (%s)", message(msg), log_level(msg)))
}
