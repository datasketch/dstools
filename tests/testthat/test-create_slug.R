test_that("multiplication works", {

  x <- " Latin %&"
  expect_equal(create_slug(x), "latin")

  x <- "with_underscore"
  expect_equal(create_slug(x), "with_underscore")

  x <- ""
  expect_false(grepl("-",create_slug(x, append_random = T)))
  expect_equal(nchar(create_slug(x, append_random = T)), 5)

  x <- "¡Hello! world-=#"
  slug <- create_slug(x, append_random = T)
  split <- strsplit(slug,"-")[[1]]
  expect_equal(split[1], "hello")
  expect_equal(split[2], "world")
  expect_equal(nchar(split[3]), 5)


})

