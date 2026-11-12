simplex <- function(a, b)
  a + b*1i

driver_directions <- function(start, end)
  end - start

manhattan <- function(start, end)
  abs(Re(end) - Re(start)) + abs(Im(end) - Im(start))

as_crow_flies <- function(start, end)
  abs(end - start)

crow_directions <- function(start, end)
  Conj(end - start)
