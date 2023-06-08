test_that("extension works", {

  expect_equal(file_ext("file.png"), "png")
  expect_equal(file_ext("file.tar.gz"), "gz")


  expect_equal(sans_ext("file.png"), "file")
  expect_equal(sans_ext("path/file.png"), "file")

})
