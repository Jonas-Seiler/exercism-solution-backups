to_vec <- function(string) unlist(strsplit(string, split = ""))

hamming <- function(strand1, strand2) {
  if(nchar(strand1) != nchar(strand2)) stop()
  vc1 <- to_vec(strand1)
  vc2 <- to_vec(strand2)
  return(sum(vc1 != vc2))
}
