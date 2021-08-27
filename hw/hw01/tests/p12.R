test = list(
  name = "p12",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.6666666666666666,
      code = {
        testthat::expect_true(is.data.frame(sleep_time_rev), 
                              info = "p12a: Checking sleep_time_rev is a dataframe")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.6666666666666666,
      code = {
        testthat::expect_true(ncol(sleep_time_rev) == 11,
                              info = "p12b: Checking sleep_time_rev has 11 columns")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.6666666666666666,
      code = {
        testthat::expect_true(nrow(sleep_time_rev) == 83,
                              info = "p12c: Checking sleep_time_rev has 83 rows")
      }
    )
  )
)