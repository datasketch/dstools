
#' Remove accents
#'
#' @param string a character with accents
#'
#' @return a character without accents
#' @export
#'
#' @examples
#'
#' remove_accents("Estós ácentós están por sér elíminádós")
remove_accents <- function (string) {
  accents <- "àèìòùÀÈÌÒÙáéíóúýÁÉÍÓÚÝäëïöüÄËÏÖÜâêîôûÂÊÎÔÛñÑç"
  translation <- "aeiouAEIOUaeiouyAEIOUYaeiouAEIOUaeiouAEIOUnNc"
  chartr(accents, translation, string)
}
