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
      trimws(whitespace="[\\[\\]]") |>
      tolower()
  return(split[1])
}

reformat <- function(msg) {
  return(sprintf("%s (%s)", message(msg), log_level(msg)))
}
