
#' Collapse Elements into a String
#'
#' This function takes multiple arguments and collapses them into a single
#' character string, with a specified character used to separate the elements.
#'
#' @param x An object or multiple objects (..., see below) to be collapsed into a single string.
#' @param collapse A character string to separate the elements of the output string. Defaults to a comma.
#' @param ... Additional arguments which are to be collapsed into the output string.
#'
#' @return A single character string containing all input elements, separated by the 'collapse' character.
#'
#' @export
#'
#' @examples
#' collapse("Hello", "world", collapse = " ")
#' collapse("R", "is", "awesome", collapse = "_")
collapse <- function(..., collapse = ", "){
  x <- list(...)
  #str(x)
  #str(length(x))
  #if(length(x) > 1){
    x <- unlist(x)
  #}
  paste(x, collapse = collapse)
}

