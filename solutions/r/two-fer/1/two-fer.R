two_fer <- function(input = NA) {
  who <- ifelse(is.character(input), input, "you")
  return(paste0("One for ", who, ", one for me."))
}
