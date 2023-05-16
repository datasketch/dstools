
#' Generate a Random Name
#'
#' This function generates a random alphanumeric string of a specified length,
#' with an optional prefix. The output can be used to create random identifiers
#' or temporary names.
#'
#' @param n An integer specifying the length of the random part of the name.
#'   Defaults to 8.
#' @param prefix An optional character string to be appended to the start
#'   of the random name. Defaults to an empty string.
#'
#' @return A character string consisting of the prefix (if any) followed by a
#'   random alphanumeric string.
#' @export
#'
#' @examples
#' random_name()
#' random_name(5)
#' random_name(10, "temp_")
random_name <- function(n = 8, prefix = ""){
  rnd <- paste0(sample(c(letters,0:9), n, replace = TRUE), collapse = "")
  paste0(prefix, rnd)
}
