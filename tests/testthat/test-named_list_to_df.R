test_that("Named list to df", {

  library(tibble)

  x <- list("a" = 1, "b" = 2, "c" = 3)
  df <- named_list_to_df(x)
  expect_equal(x$a, df$value[df$name == "a"])

  x <- list("a" = 1, "b" = 2, "c" = "C")
  df <- named_list_to_df(x)
  expect_true(is.character(df$value))


  x <- list("a" = 1, "b" = NA, "c" = "C", d = NULL)
  df <- named_list_to_df(x)

  x <- list("a" = 1, "b" = NULL, "c" = c("C1","C2"))
  df <- named_list_to_df(x)

  expect_true(tibble::is_tibble(df))
  expect_equal(class(df$value), "list")

  df <- named_list_to_df(x, class = TRUE)

  expect_equal(df$class, c("numeric", NA, "character"))

})
