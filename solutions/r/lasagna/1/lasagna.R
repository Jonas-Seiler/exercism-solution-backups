# TODO: define the 'expected_minutes_in_oven()' function
expected_minutes_in_oven <- function() {
  return(60)
}

# TODO: define the 'remaining_time_in_minutes()' function
remaining_time_in_minutes <- function(minutes_passed) {
  return(expected_minutes_in_oven() - minutes_passed)
}

# TODO: define the 'prep_time_in_minutes()' function
prep_time_in_minutes <- function(layers) {
  return(layers * 2)
}

# TODO: define the 'elapsed_time_in_minutes()' function
elapsed_time_in_minutes <- function(layers, minutes_in_oven) {
  return(prep_time_in_minutes(layers) + minutes_in_oven)
}