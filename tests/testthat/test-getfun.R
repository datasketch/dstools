test_that("multiplication works", {


  select_not_null <- getfun("dstools::%||%")
  expect_equal(select_not_null(NULL, 2), 2)

  mysum <- getfun("sum")
  expect_equal(sum(c(1,3)), mysum(c(1,3)))

})
