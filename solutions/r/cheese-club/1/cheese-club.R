library(purrr)
library(dplyr)

all_15 <- function(ratings) 
  all(ratings %in% c(1, 5))

name_customers <- function(names, ratings)
  map2(names, ratings, \(n, r) list(name = n, rating = r))

emphatics <- function(names, ratings)
  name_customers(names, ratings) |> keep(\(c) all_15(c$rating))

to_binary <- function(ratings)
  ifelse(ratings == 5, 1, 0)

satisfactions <- function(ratings)
  cummean(ratings) |> round(2)

