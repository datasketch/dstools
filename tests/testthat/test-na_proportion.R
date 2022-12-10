test_that("na_proportions calculation", {

  sample <- c(NA, NA, 1, 2, 3, 4)

  expect_equal(na_proportion(sample), 0.33333333)
  expect_equal(na_proportion(sample, digits = 2), 0.33)

})
