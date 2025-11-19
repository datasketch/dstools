test_that("Read dataframes from folder", {

  #folder <- "tests/testthat/folder/"
  folder <- "folder"
  dfs <- read_folder_dfs(folder, assign_to_global = T)
  expect_equal(get("cars"), dfs$cars)
  expect_equal(get("iris"), iris)

})
