#' Estimation of NA proportions
#'
#' This function estimates the proportion of NA values in a vector
#'
#' @param x a vector with NA values
#' @param digits integer indicating the number of decimal places to be used
#'
#' @return a proportion of NA values in the vector
#'
#' @export
#'
#' @examples
#'
#' sample <- c(NA, NA, 1,2,3,4)
#' na_proportion(sample)
na_proportion <- function(x, digits = NULL){

  if(length(x) < 4) {
    return(0)
  } else {

    if(is.null(digits)){

      sum(is.na(x))/length(x)

    } else {

      round(
        sum(is.na(x))/length(x),
        digits)
    }
  }
}




