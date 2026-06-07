test_that("load_data returns a data frame with expected columns", {
  df <- load_data()
  expect_s3_class(df, "data.frame")
  expect_true("country" %in% names(df))
  expect_true("grand_total" %in% names(df))
  expect_true(nrow(df) > 0)
})
