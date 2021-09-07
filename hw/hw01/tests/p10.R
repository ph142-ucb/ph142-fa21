test = list(
  name = "p10",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.3333333333333333,
      code = {
        testthat::expect_true(is.data.frame(sleep_time), 
                              info = "p10a: Checking sleep_time is a dataframe")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.3333333333333333,
      code = {
        testthat::expect_true(ncol(sleep_time) == 11, 
                              info = "p10b: Checking sleep_time has 11 columns")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.3333333333333333,
      code = {
        testthat::expect_true(nrow(sleep_time) == 83, 
                              info = "p10c: Checking sleep_time has 83 rows")
      }
    )
  )
)