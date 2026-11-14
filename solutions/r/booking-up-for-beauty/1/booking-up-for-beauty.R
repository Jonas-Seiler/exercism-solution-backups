library(lubridate)

schedule_appointment <- function(appointment)
  appointment |> as.POSIXct(format = "%m/%d/%Y %H:%M:%S", tz = "UTC")

has_passed <- function(appointment)
  now() - appointment > 0

is_afternoon_appointment <- function(appointment)
  hour(appointment) >= 12 && hour(appointment) < 18

day_of_week <- function(appointment)
  wday(appointment, week_start = 1)

reschedule <- function(appointment) {
  appointment <- schedule_appointment(appointment)
  wd <- wday(appointment, week_start = 1)
  next_friday <- ifelse(wd > 4, 12, 5)
  return(appointment + days(next_friday - wd))
}