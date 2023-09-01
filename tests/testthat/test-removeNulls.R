test_that("removeNulls function works as expected", {

  # Test basic functionality
  test_list <- list(1, NULL, 2, NULL, 3, character(0), integer(0))
  expect_equal(removeNulls(test_list), list(1, 2, 3))

  # Test with empty list
  test_list <- list()
  expect_equal(removeNulls(test_list), list())

  # Test with list that has all NULLs
  test_list <- list(NULL, NULL, NULL, character(0), integer(0))
  expect_equal(removeNulls(test_list), list())

  # Test with a list containing other types
  test_list <- list(1, "a", NULL, list(NULL), data.frame(a = 1), character(0), integer(0))
  expect_equal(removeNulls(test_list), list(1, "a", list(NULL), data.frame(a = 1)))

  # Test with atomic vectors (should return input without modification)
  expect_equal(removeNulls(1:5), 1:5)
  expect_equal(removeNulls(c("a", "b")), c("a", "b"))

  # Test with NULL (should return NULL without modification)
  expect_null(removeNulls(NULL))

})
