
#' Check for Rows with All NA
#'
#' This function checks a given dataframe for rows where all values in the specified columns (or all columns if none are specified) are NA.
#'
#' @param d A data frame to check for rows with all NA values.
#' @param cols An optional character vector specifying the columns to check for NA values.
#' If NULL (the default), all columns are considered.
#'
#' @return A logical value indicating whether any row with all NA values was found in the specified columns.
#'
#' @export
#'
#' @examples
#' \dontrun{
#' df <- data.frame(a = c(1, NA, 3), b = c(NA, NA, 3))
#' has_all_na_rows(df)
#' }
has_all_na_rows <- function(d, cols = NULL){
  if(is.null(cols)) cols <- names(d)
  d <- d[,cols]
  any(apply(d, 1, function(d) all(is.na(d))))
}


#' Identify Rows with All NA
#'
#' This function identifies the indices of rows in a given dataframe where all values in the specified columns
#' (or all columns if none are specified) are NA.
#'
#' @param d A data frame to check for rows with all NA values.
#' @param cols An optional character vector specifying the columns to check for NA values.
#' If NULL (the default), all columns are considered.
#' @param na An optional vector specifying the values to be considered as NA. Default is c(NA).
#'
#' @return A vector of indices of rows with all NA values in the specified columns.
#'
#' @export
#'
#' @examples
#' \dontrun{
#' df <- data.frame(a = c(1, NA, 3), b = c(NA, NA, 3))
#' which_all_na_rows(df)
#' }
which_all_na_rows <- function (d, cols = NULL, na = c(NA)) {
  if(is.null(cols)) cols <- names(d)
  d <- d[,cols]
  i <- 1:nrow(d)
  idx <- apply(d, 1, function(d) all(is.na(d)))
  i[idx]
}

