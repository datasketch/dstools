test_that("Named list to df", {

  x <- list("a" = 1, "b" = 2, "c" = 3)
  df <- named_list_to_df(x)
  expect_equal(x$a, df$value[df$name == "a"])

  x <- list("a" = 1, "b" = 2, "c" = "C")
  df <- named_list_to_df(x)
  str(df)
  expect_true(is.character(df$value))





})
