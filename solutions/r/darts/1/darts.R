score <- function(x, y) {
  dist <- sqrt(x^2 + y^2)
  return(
    ifelse(dist <= 1 , 10, 
    ifelse(dist <= 5 ,  5,
    ifelse(dist <= 10,  1,
                        0)))
  )
}
  