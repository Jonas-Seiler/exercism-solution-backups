does_stack_include_card <- function(stack, card) {
  return(card %in% stack)
}

get_card_position <- function(stack, card) {
  if(!card %in% stack) return(-1)
  return(which(stack == card))
}

is_each_card_even <- function(stack) {
  return(all(stack %% 2 == 0))
}

does_stack_include_odd_card <- function(stack) {
  return(!is_each_card_even(stack))
}

get_first_odd_card <- function(stack) {
  if(!does_stack_include_odd_card(stack)) return(-1)
  odd_cards <- stack[stack %% 2 == 1]
  return(odd_cards[1])
}

get_first_even_card_position <- function(stack) {
  if(all(stack %% 2 != 0)) return(-1)
  even_card_indecies <- which(stack %% 2 == 0)
  return(even_card_indecies[1])
}
