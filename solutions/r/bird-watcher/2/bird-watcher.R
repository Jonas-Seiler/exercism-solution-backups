today <- function(birds_per_day) {
  return(tail(birds_per_day, n = 1))
}

increment_todays_count <- function(birds_per_day) {
  len <- length(birds_per_day)
  return(birds_per_day + c(rep(0, len-1), 1))
}

has_day_without_birds <- function(birds_per_day) {
  return(any(birds_per_day == 0))
}

count_for_first_days <- function(birds_per_day, num_days) {
  return(sum(head(birds_per_day, num_days)))
}

busy_days <- function(birds_per_day) {
  return(sum(birds_per_day >= 5))
}

running_total <- function(birds_per_day) {
  return(cumsum(birds_per_day))
}

busy_days_of_week <- function(birds_per_day, day_names) {
  return(day_names[order(birds_per_day, decreasing = TRUE)])
}
