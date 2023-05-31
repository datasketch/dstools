
#' Flatten a Nested List
#'
#' This function recursively traverses through a nested list (i.e., a list of lists)
#' and returns a single flat list containing all elements.
#'
#' @param lst A list object, which can be a nested list (a list of lists).
#'
#' @return A flat list containing all elements from the input list. If the input list
#'   was nested, the returned list will be a single-level list combining all elements.
#'
#' @examples
#' nested_list <- list(a = 1, b = list(c = 2, d = 3, e = list(f = 4, g = 5)))
#' flatten_list(nested_list)
#' @export
flatten_list <- function (lst) {
  do.call(c, lapply(lst, function(x) if (is.list(x))
    flatten_list(x)
    else list(x)))
}


