test_that("multiplication works", {
  x <- " Latin %&"
  expect_equal(create_slug(x), "latin")
})

