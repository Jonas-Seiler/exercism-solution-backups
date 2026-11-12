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
  wedges <- 0
  to_cut <- 0
  for(lime in limes) {
    if(wedges >= needed) break
    wedges <- wedges + switch(lime, small=6, medium=8, large=10)
    to_cut <- to_cut + 1
  }
  return(to_cut)
}

order_times <- function(orders) {
  for(order in orders) {print(time_to_mix_juice(order))}
}

remaining_orders <- function(time_left, orders) {
  time_needed <- 0
  num_fulfilled <- 0
  for(order in orders) {
    if(time_needed >= time_left) break
    time_needed <- time_needed + time_to_mix_juice(order)
    num_fulfilled <- num_fulfilled + 1
  }
  orders_left <- tail(orders, length(orders) - num_fulfilled)
  return(orders_left)
}