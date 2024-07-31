test_that("multiplication works", {


  df <- data.frame(a = 1:3, b = 4:6, c = 7:9)

  vec_dict <- c(a = "A", b = "B", d = "D")
  rename_columns(df, vec_dict)

  df_dict <- data.frame(new_name = c("A", "B", "D"),
                         original_name = c("a", "b", "d"))
  expect_equal(names(rename_columns(df, df_dict)), c("A", "B", "c"))

})
