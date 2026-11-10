check_humidity_level <- function(pct_humidity) {
  stopifnot(pct_humidity <= 70)
  message("humidity test passed")
  return(TRUE)
}

report_overheating <- function(temperature) {
  if(is.null(temperature)) stop("Sensor Broken")
  if(temperature > 600) stop(paste("Overheating:", temperature, "C"))
  if(temperature < 600 && temperature >= 500) {
    warning(paste("Risk of overheating:", temperature, "C"))
    return(FALSE)
  }
  message(paste("temperature check passed:", temperature, "°C"))
  return(TRUE)
}

monitor_the_machine <- function(pct_humidity, temperature) {
  check_humidity_level(pct_humidity)
  report_overheating(temperature)
  message("All OK")
}
