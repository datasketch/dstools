


#' @title NULL Pipe
#' @name %||%
#'
#' @description Pipe `%||%` evaluates nullity between two objects and:
#' a) **return x** if neither x nor y is NULL, empty or NA
#' b) **return x** if y is NULL, empty or NA
#' c) **return y** if x is NULL, empty or NA
#'
#' @param x any value
#' @param y any value
#'
#' @return Return y if x is NULL, empty or NA
#'
#' @examples
#'
#' x <- "pepe"
#' y <- "x"
#'
#' x %||% y
#'
#'
#' @rdname pipe
#' @export
`%||%` <- function (x, y){

  if (all(is.empty(x))){
    return(y)

  } else if (all(is.null(x)) || all(is.na(x))){
    return(y)

  } else if (inherits(x, "character") && length(nchar(x)) == 0){
    return(y)

  } else {x}
}


