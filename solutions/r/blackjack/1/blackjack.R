cards <- c(
  ace   = 11,
  two   =  2,
  three =  3,
  four  =  4,
  five  =  5,
  six   =  6,
  seven =  7,
  eight =  8,
  nine  =  9,
  ten   = 10,
  jack  = 10,
  queen = 10,
  king  = 10
)

parse_card <- function(card) {
  if(!card %in% names(cards)) return(0)
  return(cards[[card]])
}

first_turn <- function(card1, card2, dealer_card) {
  player_score <- parse_card(card1) + parse_card(card2)
  dealer_score <- parse_card(dealer_card)
  if(card1 == "ace" && card2 == "ace") return("P")
  if(player_score == 21) if(dealer_score < 10) return("W") else return("S")
  if(player_score %in% 17:20) return("S")
  if(player_score %in% 12:16) if(dealer_score < 7) return("S")
  return("H")
}
