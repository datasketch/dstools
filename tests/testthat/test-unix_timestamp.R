test_that("unix_timestamp returns the current timestamp", {
  expect_type(unix_timestamp(), "integer")
  expect_true(unix_timestamp() > 0)
})

test_that("unix_timestamp_to_date converts timestamp to POSIXct", {
  timestamp <- 1616841600  # Represents '2021-03-27 12:00:00 UTC'
  converted_date <- unix_timestamp_to_date(timestamp)

  expect_s3_class(converted_date, "POSIXct")
  # expect_equal(converted_date, as.POSIXct("2021-03-27 11:40:00 UTC"))
})


