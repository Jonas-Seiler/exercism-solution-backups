new_car <- function(speed, battery_drain)
  list(
    speed = speed, 
    battery_drain = battery_drain, 
    battery = 100, 
    distance_traveled = 0
  )

new_track <- function(track_length)
  list(track_length = track_length)

battery_drained <- function(car)
  car$battery < car$battery_drain

drive <- function(car) {
  if(battery_drained(car)) return(car)
  car$battery <- car$battery - car$battery_drain
  car$distance_traveled <- car$distance_traveled + car$speed
  return(car)
}

can_finish <- function(car, track) {
  len <- track$track_length
  turns_needed <- len %/% car$speed + len %% car$speed
  turns_possible <- car$battery %/% car$battery_drain
  return(turns_needed <= turns_possible)
}

store_track <- function(car, track, name) {
  car$battery <- 100
  complete <- can_finish(car, track) 
  car[[name]] <- list(
    track_length = track$track_length,
    complete = complete
  )
  return(car)
}