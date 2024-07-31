test_that("multiplication works", {


  df <- data.frame(a = 1:3, b = 4:6, c = 7:9)

  name_dict <- c(new_b = "b", new_d = "d", new_a = "a")
  new_df <- rename_columns(df, name_dict)
  expect_equal(names(new_df), c("new_a", "new_b", "c"))

  name_dict <- data.frame(new_name = c("B", "A", "D"),
                         original_name = c("b", "a", "d"))
  expect_equal(names(rename_columns(df, name_dict)), c("A", "B", "c"))

})
