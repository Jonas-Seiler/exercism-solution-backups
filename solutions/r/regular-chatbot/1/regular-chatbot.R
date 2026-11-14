library(stringr)

is_valid_command <- function(msg)
  msg |> str_detect(regex("^chatbot.*", ignore_case = TRUE))

remove_emoji <- function(msg)
  msg |> str_replace_all("emoji\\d*", "")

check_phone_number <- function(number)
  number |>
  str_detect(r"{\(\+\d{2}\) \d{3}-\d{3}-\d{3}}") |>
  ifelse(
    "Thanks! You can now download me to your phone.",
    paste("Oops, it seems like I can't reach out to", number)
  )

nice_to_meet_you <- function(str)
  str |> 
  str_replace("^(\\w+), (\\w+)$", "Nice to meet you, \\2 \\1")
  

get_URL <- function(msg)
  (msg |> str_extract_all("\\w+\\.\\w{2,}"))[[1]]
