test_that("multiplication works", {

  x <- c("a","b", "missing")
  y <- c("a", "b")
  expect_equal(which_not_in(x,y), "missing")



})
