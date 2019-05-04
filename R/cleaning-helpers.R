clean_data <- function(x) {

  if (!is.data.frame(x)) {
    stop("`x` must be a data frame")
  }

  x[complete.cases(x), , drop = FALSE]
}
