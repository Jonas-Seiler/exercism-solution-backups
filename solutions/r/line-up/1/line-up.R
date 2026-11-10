line_up <- function(name, number) {
  ordinal_suffix <- "th"
  if(number %% 10 == 1 && number %% 100 != 11) ordinal_suffix <- "st"
  if(number %% 10 == 2 && number %% 100 != 12) ordinal_suffix <- "nd"
  if(number %% 10 == 3 && number %% 100 != 13) ordinal_suffix <- "rd"
  return(
    sprintf("%s, you are the %d%s customer we serve today. Thank you!", 
            name, number, ordinal_suffix)
  )
}
