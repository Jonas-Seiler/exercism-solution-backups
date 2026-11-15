raindrops <- function(number)
  paste0(
    if(number %% 3 == 0) "Pling",
    if(number %% 5 == 0) "Plang",
    if(number %% 7 == 0) "Plong",
    if(number %% 3 != 0 
       & number %% 5 != 0 
       & number %% 7 != 0) number)
