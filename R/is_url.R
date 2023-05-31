

#'
#' This function checks whether a given string is a URL. It recognizes both
#' 'http://' and 'https://' protocols.
#'
#' @param x A character string.
#'
#' @return A logical value: TRUE if 'x' is a URL (starts with 'http://' or
#'   'https://'), and FALSE otherwise.
#'
#' @examples
#' is_url("http://example.com")
#' is_url("https://example.com")
#' is_url("not_a_url")
#' @export
is_url <- function(x){
  grepl("^https?://", x)
}

