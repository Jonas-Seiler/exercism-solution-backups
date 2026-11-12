library(dplyr)

time_to_mix_juice <- function(juice) 
  switch(
    juice,
    "Pure Strawberry Joy" = 0.5,
    "Energizer" =,
    "Green Garden" = 1.5,
    "Tropical Island" = 3,
    "All or Nothing" = 5,
    2.5
  )

limes_to_cut <- function(needed, limes) {
  if(needed == 0 || length(limes) == 0) return(0)
  limes <- case_when(
    limes == "small"  ~  6,
    limes == "medium" ~  8,
    limes == "large"  ~ 10
  )
  wedges <- cumsum(limes)
  if(max(wedges) < needed) return(length(limes))
  return(sum(wedges < needed) + 1)
}
#sometimes imperative style is clearer

order_times <- function(orders) {
  for(order in orders) {print(time_to_mix_juice(order))}
}

remaining_orders <- function(time_left, orders) {
  cum_order_times <- cumsum(unname(sapply(orders, time_to_mix_juice)))
  num_unfulfilled <- pmax(sum(cum_order_times >= time_left) - 1, 0)
  return(tail(orders, num_unfulfilled))
}
#do not do this just because you can
#this is not readable, nobody is impressed