test_that("na rows", {

  d <- head(cars)
  expect_false(has_all_na_rows(d))

  d <- rbind(d, c(NA, NA))
  expect_true(has_all_na_rows(d))


  df <- data.frame(a = c(1, NA, 3), b = c(NA, NA, 3))
  expect_equal(which_all_na_rows(df), 2)

})
