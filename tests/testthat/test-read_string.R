test_that("multiplication works", {

  path <- "files/file.txt"
  expect_equal(read_string(path), "Hello\nWorld")
})
