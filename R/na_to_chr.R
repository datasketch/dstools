#' Convert NA values to character
#'
#' @param x vector with NA values
#' @param na value to replace for the existing NA in x vector
#'
#' @return A modified version of x that replace any NA values with the one set in na argument
#' @export
#'
#' @examples
#'
#' sample <- c("text 1", NA, "text 2", "text 3", NA)
#'
#' na_to_chr(sample, "ex_na")
#'
na_to_chr <- function(x, na){
  x[is.na(x)] <- na
  x
}
