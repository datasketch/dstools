
#' Convert a Named List to a Data Frame
#'
#' This function takes a named list as input and returns a two-column data frame (or tibble).
#' The first column contains the names of the list elements, and the second column contains
#' the values of the list elements.
#'
#' @param x A named list.
#'
#' @return A tibble with two columns: 'name' (containing the names of the list elements)
#'   and 'value' (containing the values of the list elements).
#'
#' @examples
#' named_list <- list("a" = 1, "b" = 2, "c" = 3)
#' named_list_to_df(named_list)
#' @export
named_list_to_df <- function (x){
  df <- data.frame(name = names(x), value = unlist(x))
  rownames(df) <- NULL
  df
}
