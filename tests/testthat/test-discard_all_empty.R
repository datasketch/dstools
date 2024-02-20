test_that("discard all empty rows works", {

  df <- data.frame(a = c(NA, 2, 3, NA),
                   b = c(NA, NA, 5, NA))
  expect_equal(nrow(discard_all_empty_rows(df)), 2)

  df <- data.frame(a = c(NA, NA, NA, NA),
                   b = c(1, NA, 5, 2))
  expect_equal(ncol(discard_all_empty_columns(df)), 1)

  df <- data.frame(a = c(1, NA, 2, NA),
                   b = c("a", "", "b", ""))
  expect_equal(nrow(discard_all_empty_rows(df)), 2)


})


test_that("discard all empty columns", {

  df <- data.frame(a = rep(c(NA, 2, 3, NA), 10000),
                   b = rep(c(NA, NA, 5, NA), 10000),
                   c = rep(c(NA,NA,NA,NA), 10000))
  expect_equal(ncol(discard_all_empty_columns(df)), 2)


})

