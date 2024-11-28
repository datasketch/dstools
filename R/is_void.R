
#' @export
is_void <- function(x){

  if(is.null(x)) return(TRUE)
  if(length(x) == 0) return(TRUE)
  dplyr::case_when(
    all(is.na(x)) ~ TRUE,
    all(nchar(as.character(x))) == 0 ~ TRUE,
    length(x) > 0 ~ FALSE
    # is.na(x) ~ TRUE,
    # is.vector(x) && length(x) > 0 ~ FALSE,
    # is.list(x) && length(x) > 0 ~ FALSE,
    # TRUE ~ FALSE
  )
}

