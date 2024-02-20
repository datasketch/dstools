test_that("Checking emptyness", {

  x <- ''
  expect_true(is.empty(x))
  x <- character(0)
  expect_true(is.empty(x))
  x <- integer(0)
  expect_true(is.empty(x))
  x <- NULL
  expect_true(is.empty(x))
  x <- NA
  expect_true(is.empty(x))

  x <- c("", 2)
  expect_equal(is.empty(x), c(TRUE, FALSE))

  x <- c("", "")
  expect_equal(is.empty(x), c(TRUE, TRUE))

  x <- c("", 2, NA)
  expect_equal(is.empty(x), c(TRUE, FALSE, TRUE))

  x <- rep(NA, 1000)
  is.empty(x)


})
