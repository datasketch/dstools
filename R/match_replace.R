#' Match and Replace Vector Values
#'
#' This function matches the elements in a vector 'v' against the first list in 'dic' and replaces
#' them with corresponding elements in the second list in 'dic'. If 'force' is set to FALSE,
#' elements in 'v' that don't have a match in 'dic' are not replaced.
#'
#' @param v A vector whose elements are to be matched and possibly replaced.
#' @param dic A list of two vectors. The first vector contains the elements to be matched in 'v',
#'   and the second vector contains the elements to replace the matches with.
#' @param force A logical value. If TRUE (default), elements in 'v' that don't have a match in
#'   'dic' are replaced with NA. If FALSE, such elements are not replaced.
#'
#' @return A vector the same length as 'v'. If 'force' is TRUE, this vector contains the replaced
#'   elements and NA for non-matching elements. If 'force' is FALSE, the vector contains the replaced
#'   elements and the original elements for non-matching ones.
#'
#' @examples
#' v <- c("a", "b", "c", "d")
#' dic <- data.frame(x = c("a", "b"), y = c("1", "2"))
#' match_replace(v, dic)
#' match_replace(v, dic, force = FALSE)
#' @export
match_replace <- function (v, dic, force = TRUE){
  matches <- dic[[2]][match(v, dic[[1]])]
  out <- matches
  if (!force)
    out[is.na(matches)] <- v[is.na(matches)]
  out
}
