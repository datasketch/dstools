#' Create slug from string
#'
#' @param x character vector
#' @param sep word separator in slug, '-' by default
#'
#' @return A slug version of the string
#' @export
#'
#' @examples
#'
#' sample <- c("text 1", NA, "text 2", "text 3", NA)
#'
#' create_slug(sample, "ex_na")
#'
create_slug <- function (x, sep = "-", append_random = FALSE,
                         append_random_n = 5){
  x <- gsub("[^[:alnum:]_]", "-", x)
  x <- remove_accents(x)
  x <- tolower(x)
  x <- gsub("-+", "-", x)
  x <- gsub("+-$", "", x)
  x <- gsub("^-+", "", x)
  if(sep != "-")
    x <- gsub("-", sep, x)
  if(append_random){
    prefix <- ifelse(x == "", x, paste0(x,"-"))
    x <- random_name(n = append_random_n, prefix = prefix)
  }
  x
}
