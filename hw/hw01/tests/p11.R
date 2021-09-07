test = list(
  name = "p11",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.3333333333333333,
      code = {
        testthat::expect_true(is.data.frame(sleep_rev), 
                              info = "p11a: Checking sleep_rev is a dataframe")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.3333333333333333,
      code = {
        testthat::expect_true(ncol(sleep_rev) == 11, 
                              info = "p11b: Checking sleep_rev has 11 columns")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.3333333333333333,
      code = {
        testthat::expect_true(nrow(sleep_rev) == 83, 
                              info = "p11c: Checking sleep_rev has 83 rows")
      }
    )
  )
)