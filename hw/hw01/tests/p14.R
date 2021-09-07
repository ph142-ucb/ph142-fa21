test = list(
  name = "p14",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.3333333333333333,
      code = {
        testthat::expect_true(is.data.frame(sleep_r_bw), 
                              info = "p14a: Checking sleep_r_bw is a dataframe")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.3333333333333333,
      code = {
        testthat::expect_true(ncol(sleep_r_bw) == 13, 
                              info = "p14b: Checking sleep_r_bw has 13 columns")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.3333333333333333,
      code = {
        testthat::expect_true(nrow(sleep_r_bw) == 83, 
                              info = "p14c: Checking sleep_r_bw has 83 rows")
      }
    )
  )
)