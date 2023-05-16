#' Checking emptiness
#'
#' @param x an objetc
#'
#' @return TRUE if the object is empty. FALSE is the object is not empty
#' @export
#'
#' @examples
#'
#' empty_object <- list()
#' is.empty(empty_object)
#'
#' non_empty_object <- "hello"
#' is.empty(non_empty_object)
#'
is.empty <- function(x){
  if(length(x) == 0) return(TRUE)
  if(length(x) == 1 && nchar(x) == 0) return(TRUE)
  !as.logical(length(x))
}
