
#' Extract File Extension
#'
#' This function extracts the extension from a given filename.
#'
#' @param x A character string specifying the filename from which to extract the extension.
#'
#' @return The extension of the specified file as a character string. If the file has no extension, returns an empty string.
#'
#' @export
#'
#' @examples
#' \dontrun{
#' # Extract the extension from a filename
#' ext <- file_ext('my_file.txt')
#' }
file_ext <- function(x){
  pos <- regexpr("\\.([[:alnum:]]+)$", x)
  ifelse(pos > -1L, substring(x, pos + 1L), "")
}

#' Remove File Extension
#'
#' This function removes the extension from a given filename. If the compression parameter is TRUE,
#' it additionally removes the compression extension (gz, bz2, or xz).
#'
#' @param x A character string specifying the filename from which to remove the extension.
#' @param compression A logical value indicating whether to remove compression extensions (gz, bz2, xz).
#' Default is FALSE.
#'
#' @return The filename without its extension as a character string.
#'
#' @export
#'
#' @examples
#' \dontrun{
#' # Remove the extension from a filename
#' filename <- sans_ext('my_file.txt.gz', compression = TRUE)
#' }
sans_ext <- function(x, compression = FALSE){
  x <- basename(x)
  if (compression)
    x <- sub("[.](gz|bz2|xz)$", "", x)
  sub("([^.]+)\\.[[:alnum:]]+$", "\\1", x)
}


