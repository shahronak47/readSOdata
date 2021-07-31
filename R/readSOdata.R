#' Read data from Stack Overflow easily
#'
#' @param text string to be read
#' @param sep separator
#' @param strip.white Do you want to strip the white space?
#' @param header Does the text contain headers?
#' @param ... Additional arguments to read.table
#'
#' @return A data.frame
#' @export
#'
#' @examples
#' readSOdata('Participate | B1  | B2  | B3  | B4  | B5  | Query1  | Query2
#'3           | -1  | -1  | -1  | -1  | -1  | Noissue | Noissue
#'1           | -1  | 1   | -1  | -1  | 1   | Noissue | Noissue
#'1           | -1  | -1  | -1  | -1  | -1  | Issue   | Noissue
#'2           | -1  | 1   | 1   | -1  | 1   | Noissue | Noissue
#'2           | 1   | 1   | 1   | 1   | -1  | Noissue | Noissue
#'1           | -99 | -99 | -99 | -99 | -99 | Noissue | Noissue')

readSOdata <- function(text, sep = '|', strip.white = TRUE, header = TRUE, ...) {
  df <- utils::read.table(text = text, sep = sep, strip.white = strip.white, header = header, ...)
  df[colSums(!is.na(df)) > 0]
}
