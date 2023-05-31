test_that("multiplication works", {

  flat <- flatten_list(list(a = 1, b = list(b1 = list(b11 = "b"), b2 = "B2")))
  expect_equal(names(flat), c("a", "b.b1.b11", "b.b2"))


})
