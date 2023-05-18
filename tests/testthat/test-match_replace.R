test_that("Match and replace a vector", {

  x <- 1:3
  dic <- data.frame(x = 3:1, y = paste0("v",as.character(3:1)))
  expect_equal(match_replace(x, dic), c("v1", "v2", "v3"))


})
