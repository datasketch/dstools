


#' @title NULL Pipe
#' @name %||%
#'
#' @description Defaults for NULL values
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

  if (is.empty(x)){
    return(y)

  } else if (all(is.null(x)) || all(is.na(x))){
    return(y)

  } else if(inherits(x, "character") && nchar(x)==0 ){
    return(y)

  } else {x}
}


