
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
named_list_to_df <- function (x, keep_null = TRUE, class = FALSE){
  if(keep_null){
    x[sapply(x, is.null)] <- NA
  }
  nms <- names(x)
  if(has_many_values(x)){
    value <- unname(purrr::list_flatten(x))
    df <- tibble::tibble(name = nms, value = x)
  }else{
    value <- unlist(x, recursive = FALSE)
    df <- data.frame(name = nms, value = unname(unlist(x)))
  }

  if(class){
    df$class <- unname(unlist(lapply(x, function(x){
      if(all(is.na(x))) return(NA)
      class(x)
    })))
  }

  df
}


has_many_values <- function(x){
  any(lapply(x, length) > 1)
}


