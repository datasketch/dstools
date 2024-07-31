#' Convert NULL values to NA in a list
#'
#' This function recursively traverses a list and converts all NULL values to NA.
#' It's particularly useful when working with data from external sources like APIs
#' or databases that may contain NULL values, ensuring consistency in how missing
#' values are represented in R.
#'
#' @param x A list or vector that may contain NULL values.
#'
#' @return A list or vector of the same structure as the input, with all NULL
#'         values replaced by NA.
#'
#' @examples
#' my_list <- list(a = 1, b = NULL, c = list(d = 2, e = NULL), f = NULL)
#' convert_null_to_na(my_list)
#'
#' @export
nulls_to_na <- function(x) {
  if (is.list(x)) {
    return(lapply(x, nulls_to_na))
  } else {
    return(if (is.null(x)) NA else x)
  }
}
