
#' @export
read_folder_dfs <- function(path,
                                   assign_to_global = FALSE,
                                   recursive = FALSE,
                                   csv_pattern  = "\\.csv$",
                                   json_pattern = "\\.json$") {
  # 1. List CSV and JSON files
  files <- list.files(
    path       = path,
    pattern    = paste0("(", csv_pattern, "|", json_pattern, ")"),
    full.names = TRUE,
    recursive  = recursive,
    ignore.case = TRUE
  )

  if (length(files) == 0) {
    message("No CSV or JSON files found in: ", path)
    return(list())
  }

  # 2. Create clean names: FILE.csv -> "FILE"
  file_names <- tools::file_path_sans_ext(basename(files))
  names(files) <- file_names

  # 3. Function to read a single file based on extension
  read_one <- function(f) {
    ext <- tolower(file_ext(f))

    if (ext == "csv") {
      readr::read_csv(f, show_col_types = FALSE)
    } else if (ext == "json") {
      # tibble::as_tibble(yyjsonr::read_json_file(f))
      tibble::as_tibble(jsonlite::read_json(f, simplifyVector = TRUE))
    } else {
      stop("Unsupported extension for file: ", f)
    }
  }

  # 4. Read all files with purrr::map + error handling
  dfs <- files |>
    purrr::map(function(f) {
      tryCatch(
        read_one(f),
        error = function(e) {
          warning("Failed to read ", f, ": ", conditionMessage(e))
          NULL
        }
      )
    })

  # Drop NULLs (failed reads)
  # dfs <- compact(dfs)

  # 5. Optionally assign to global environment
  if (assign_to_global && length(dfs) > 0) {
    purrr::iwalk(dfs, ~ assign(.y, .x, envir = .GlobalEnv))
  }

  dfs
}

