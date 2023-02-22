
#' Find which values are in one vector and not in the other
#'
#' @param x character vector
#' @param y character vector to check for existance
#'
#' @return The values in x not in y
#' @export
#'
#' @examples
#'
#' x <- c("a","b", "missing")
#' y <- c("a", "b")
#'
#' which_not_in(sample, "ex_na")
#'
which_not_in <- function (x, y) {
  x[!x %in% y]
}


