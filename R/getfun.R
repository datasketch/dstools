
#' Retrieve an Exported Function from a Namespace
#'
#' This function retrieves an exported function from a specific namespace.
#' If the provided string does not include a namespace (i.e., does not contain "::"),
#' the function returns the string as it is.
#'
#' @param x A character string. If it includes "::", the string should be in the
#'   format "namespace::function_name". If it does not include "::", the function
#'   returns 'x' as it is.
#'
#' @return If 'x' includes "::", the function returns the function specified by
#'   'x' from the namespace specified by 'x'. If 'x' does not include "::", the
#'   function returns 'x' as it is.
#'
#' @examples
#' getfun("base::sum")
#' getfun("hello")
#' @export
getfun <- function(x) {
  if(length(grep("::", x))>0) {
    parts<-strsplit(x, "::")[[1]]
    getExportedValue(parts[1], parts[2])
  } else {
    get(x)
  }
}
