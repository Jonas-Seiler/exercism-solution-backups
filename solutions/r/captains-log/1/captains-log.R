random_planet_class <- function(number_needed) {
  return(sample(
    c("D", "H", "J", "K", "L", "M", "N", "R", "T", "Y"), 
    number_needed, replace = TRUE))
}

random_ship_registry_number <- function() {
  return(paste0("NCC-", sample(1000:9999, 1)))
}

shuffle_starships <- function(starships) {
  return(sample(starships))
}

random_stardate <- function() {
  return(runif(1, min = 41000.0, max = 42000.0))
}
