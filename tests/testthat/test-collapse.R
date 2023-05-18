test_that("multiplication works", {

  expect_equal(collapse("Hello", "world"), "Hello, world")
  expect_equal(collapse(c("hello", "world"), collapse = "-"), "hello-world")


})
})
