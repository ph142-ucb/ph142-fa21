test = list(
  name = "p13",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.3333333333333333,
      code = {
        testthat::expect_true(is.data.frame(sleep_ratio), 
                              info = "p13a: Checking sleep_ratio is a dataframe")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.3333333333333333,
      code = {
        testthat::expect_true(ncol(sleep_ratio) == 12, 
                              info = "p13b: Checking sleep_time_rev has 12 collumns")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.3333333333333333,
      code = {
        testthat::expect_true(nrow(sleep_ratio) == 83, 
                              info = "p13c: Checking sleep_ratio has 83 rows")
      }
    )
  )
)