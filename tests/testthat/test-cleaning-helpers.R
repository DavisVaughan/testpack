context("test-cleaning-helpers")

test_that("cleaning removes NAs", {
  x <- data.frame(y = c(1, NA))
  expect_equal(clean_data(x), data.frame(y = 1))
})

test_that("non data frame input is caught", {
  expect_error(clean_data("hi"), "`x` must be a data frame")
})
