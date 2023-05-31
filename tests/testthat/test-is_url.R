test_that("multiplication works", {

  expect_true(is_url("https://page.com"))
  expect_true(is_url("http://page.com"))
  expect_false(is_url("http;fdsa"))

})
