test_that("multiplication works", {

  x <- c(NA, 2,3)
  expect_equal(removeNAs(x),2:3)

  x <- c()
  expect_null(removeNAs(x))

  x <- ""
  removeNAs(x)

})
