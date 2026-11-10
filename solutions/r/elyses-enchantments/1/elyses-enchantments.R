get_item <- function(stack, position) {
  return(stack[position])
}

set_item <- function(stack, position, replacement_card) {
  stack[position] <- replacement_card
  return(stack)
}

insert_item_at_top <- function(stack, new_card) {
  return(c(stack, new_card))
}

remove_item <- function(stack, position) {
  return(stack[-position])
}

check_size_of_stack <- function(stack, stack_size) {
  return(length(stack) == stack_size)
}

remove_item_from_top <- function(stack) {
  return(stack[-length(stack)])
}

insert_item_at_bottom <- function(stack, new_card) {
  return(c(new_card, stack))
}

remove_item_at_bottom <- function(stack) {
  return(stack[-1])
}
