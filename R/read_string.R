
#' Read a File and Convert its Contents to a Single String
#'
#' This function reads a file from the specified path and concatenates
#' its contents line by line into a single string, using a newline
#' character ("\n") as the delimiter.
#'
#' @param path A character string specifying the path to the file.
#'
#' @return A single character string containing the contents of the
#' file with lines separated by newline characters.
#'
#' @examples
#' # Assuming there's a file "example.txt" with content:
#' # Hello
#' # World
#' # read_string("example.txt")
#' # [1] "Hello\nWorld"
#'
#' @export
read_string <- function(path){
  paste0(readLines(path), collapse = "\n")
}

