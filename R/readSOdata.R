readSOdata <- function(text, sep = '|', strip.white = TRUE, header = TRUE, ...) {
  df <- read.table(text = text, sep = sep, strip.white = strip.white, header = header, ...)
  df[colSums(!is.na(df)) > 0]
}
