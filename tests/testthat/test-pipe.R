test_that("NULL pipe", {

  x <- "pepe"
  y <- "x"
  expect_equal(object = x %||% y,
               expected = x)

  x <- ""
  y <- 23
  expect_equal(object = x %||% y,
               expected = y)

  x <- NULL
  y <- ""
  x %||% y

  x <- 1:3
  y <- ""
  expect_equal(x %||% y, x)

})
