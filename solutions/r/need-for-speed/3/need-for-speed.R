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
  with(car, battery < battery_drain)
#this works, but can lead to subtle errors

drive <- function(car) {
  if(battery_drained(car)) return(car)
  return(within(car, {
    battery <- battery - battery_drain
    distance_traveled <- distance_traveled + speed
  }))
}
#like for example if you mistype `battery <- battry ...`
#best case the code fails because the object is not found
#worst case you're using a completely unrelated numeric variable
#from the global environment called `battry` and you only find out
#that your code doesn't work correctly much later 
#(and potentially spend a lot of time debugging)
#or if we're talking data, you might have done a lot of work with
#plausible looking but corrupted and wrong data in the meantime

can_finish <- function(car, track) {
  len <- track$track_length
  with(car, {
    turns_needed <- len %/% speed + len %% speed
    turns_possible <- battery %/% battery_drain
    return(turns_needed <= turns_possible)
  })
}
#this is the problem with `with` (and `within`)
#it is not immediately obvious what identifier resolves to what
#(more importantly what they are SUPPOSED to refer to in case of bugs)
#unless you are both versed in the scoping rules and more importantly
#almost omniscient in the particular code base and domain

store_track <- function(car, track, name) {
  car$battery <- 100
  complete <- can_finish(car, track) 
  car[[name]] <- list(
    track_length = track$track_length,
    complete = complete
  )
  return(car)
}
#this one you cannot even (reasonably) do with `with` (or `within`)