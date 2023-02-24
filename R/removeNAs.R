
#' Remove NA values
#'
#' @param x vector with NA value(s)
#'
#' @return vector without NA values
#' @export
#'
removeNAs <- function(x){
  if (length(x) == 0)
    return(x)
  if(is.empty(x)) return("")
  x[!is.na(x)]
}

