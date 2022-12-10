


#' Remove NULL values
#'
#' @param x vector with NULL value(s)
#'
#' @return vector without NULL values
#' @export
#'
removeNulls <- function(x){
  if (length(x) == 0 || !is.list(x))
    return(x)
  if(is.empty(x)) return(list())
  x[!unlist(lapply(x,is.null))]
}
