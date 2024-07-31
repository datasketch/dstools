#' Rename data frame columns using a dictionary
#'
#' This function renames the columns of a data frame based on a provided dictionary.
#' It only renames columns that exist in the data frame and ignores dictionary
#' entries for non-existent columns. The dictionary can be either a named vector
#' or a data frame with two columns. The first column will be the new name if the
#' input is a data.frame. The new name will be the names of the input dictionary.
#'
#' @param df A data frame whose columns you want to rename.
#' @param name_dict A named vector where names are the current column names and values
#'   are the new column names, or a data frame with two columns where the first column
#'   contains new names and the second column contains original names.
#'
#' @return A data frame with renamed columns.
#'
#' @examples
#' df <- data.frame(a = 1:3, b = 4:6, c = 7:9)
#'
#' # Using a named vector
#' vec_dict <- c(a = "A", b = "B", d = "D")
#' rename_columns(df, vec_dict)
#'
#' # Using a data frame
#' df_dict <- data.frame(new_name = c("A", "B", "D"),
#'                       original_name = c("a", "b", "d"))
#' rename_columns(df, df_dict)
#'
#' @export
rename_columns <- function(df, name_dict) {
  if (is.data.frame(name_dict)) {
    if (ncol(name_dict) != 2) {
      stop("When name_dict is a data frame, it must have exactly two columns.")
    }
    name_dict <- setNames(as.character(name_dict[[2]]), as.character(name_dict[[1]]))
  } else if (!is.vector(name_dict) || is.null(names(name_dict))) {
    stop("name_dict must be either a named vector or a data frame with two columns.")
  }

  # Get the names of columns that exist in both the data frame and the dictionary
  cols_to_rename <- intersect(names(df), name_dict)

  # Create a new dictionary with only the columns that exist in the data frame
  new_names <- names(name_dict[name_dict %in% cols_to_rename])

  # Rename the columns
  names(df)[match(cols_to_rename, names(df))] <- new_names

  return(df)
}
