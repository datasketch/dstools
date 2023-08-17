
#' Discard All Empty Rows from a Data Frame
#'
#' This function removes all rows from a data frame where all elements of the row are empty.
#'
#' @param d A data frame that you want to filter.
#'
#' @return A data frame without the rows where all elements are empty.
#'
#' @examples
#' df <- data.frame(a = c(NA, 2, 3, NA),
#'                  b = c(NA, NA, 5, NA))
#' discard_all_empty_rows(df)
#'
#' @export
discard_all_empty_rows <- function (d) {
  d |> dplyr::filter(apply(d, 1, function(x) !all(is.empty(x) | is.na(x))))
}

#' Discard All Empty Columns from a Data Frame
#'
#' This function removes all columns from a data frame where all elements of the column are empty.
#'
#' @param d A data frame from which you want to remove columns.
#'
#' @return A data frame without the columns where all elements are empty.
#'
#' @examples
#' df <- data.frame(a = c(NA, NA, NA, NA),
#'                  b = c(1, NA, 5, 2))
#' discard_all_empty_columns(df)
#'
#' @importFrom dplyr select
#' @export
discard_all_empty_columns <- function (d) {
  empty_cols <- purrr::map_lgl(d, ~ all(is.na(.) | is.empty(.)))
  d |> dplyr::select(which(!empty_cols))
}

