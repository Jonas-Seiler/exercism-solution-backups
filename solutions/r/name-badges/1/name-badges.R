print_name_badge <- function(id, name, department) {
  if(is.null(department)) department <- "OWNER"
  if(is.na(id)) return(sprintf("%s - %s", name, toupper(department)))
  return(sprintf("[%d] - %s - %s", id, name, toupper(department)))
}

salaries_no_id <- function(ids, salaries) {
  return(sum(salaries[is.na(ids)]))
}
