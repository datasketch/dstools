


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

  # Filter out NULL or zero-length elements
  x[!unlist(lapply(x, function(elem) is.null(elem) || length(elem) == 0))]


}
