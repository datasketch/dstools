test_that("is_void", {

  expect_true(is_void(NA))
  expect_true(is_void(NULL))


  expect_true(is_void(""))

  expect_true(is_void(list()))
  expect_true(is_void(c()))
  expect_true(is_void(character(0)))

  expect_false(is_void(list(1,2)))
  expect_false(is_void(letters))

})

