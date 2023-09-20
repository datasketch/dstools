
#' Convert the current system time to a UNIX timestamp
#'
#' This function returns the current system time as a UNIX timestamp.
#' A UNIX timestamp represents the number of seconds since '1970-01-01 00:00:00 UTC'.
#'
#' @return An integer, representing the current UNIX timestamp.
#' @export
unix_timestamp <- function(){
  as.integer(as.POSIXct(Sys.time()))
}


#' Convert a UNIX timestamp to a POSIXct date-time
#'
#' This function converts a provided UNIX timestamp into a POSIXct date-time object.
#' A UNIX timestamp represents the number of seconds since '1970-01-01 00:00:00 UTC'.
#'
#' @param x An integer or numeric vector representing a UNIX timestamp.
#'
#' @return A POSIXct object representing the converted date-time.
#' @export
unix_timestamp_to_date <- function(x){
  as.POSIXct(as.numeric(x), origin="1970-01-01")
}
