test_that("multiplication works", {

  df <- data.frame(a = c(NA, 2, 3, NA),
                   b = c(NA, NA, 5, NA))
  expect_equal(nrow(discard_all_empty_rows(df)), 2)

  df <- data.frame(a = c(NA, NA, NA, NA),
                   b = c(1, NA, 5, 2))
  expect_equal(ncol(discard_all_empty_columns(df)), 1)

})
