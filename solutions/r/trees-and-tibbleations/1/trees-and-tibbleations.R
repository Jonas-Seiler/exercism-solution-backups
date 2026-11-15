library(datasets)
library(dplyr)
library(tibble)

tree_data <- trees |> as.tibble() |> rename(Diameter = Girth)

girth_n_weight <- function(data, rnd_digits)
  data |> mutate(
    Girth = round(Diameter * pi, rnd_digits),
    Weight = round(Volume * 35, rnd_digits)
  )

orchard_copy <- function(data)
  data |> relocate(c(Weight, Height)) |> arrange(Weight)

customer_copy <- function(data, min_height, max_height, max_weight)
  data |> 
    select(Height, Weight, Diameter, Girth) |>
    filter(  Height >= min_height 
           & Height <= max_height
           & Weight <= max_weight)
