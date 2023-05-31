test_that("multiplication works", {

  x <- " Latin %&"
  expect_equal(create_slug(x), "latin")

  x <- "with_underscore"
  expect_equal(create_slug(x), "with_underscore")


})

