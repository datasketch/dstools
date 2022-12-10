test_that("na_to_chr convert NA values into a given character", {

  sample <- c("sample 1", NA, "sample 2", "sample 3", NA, NA)

  expect_equal(na_to_chr(sample, "ex_na"), c("sample 1", "ex_na", "sample 2", "sample 3", "ex_na", "ex_na"))

})
