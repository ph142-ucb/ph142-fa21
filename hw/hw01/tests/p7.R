test = list(
  name = "p7",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.3333333333333333,
      code = {
        testthat::expect_true(is.data.frame(sleep_over16), 
                              info = "p7a: Checking sleep_over16 is a dataframe")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.3333333333333333,
      code = {
        testthat::expect_true(ncol(sleep_over16) == 11, 
                              info = "p7b: Checking sleep_over16 has 11 columns")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.3333333333333333,
      code = {
        testthat::expect_true(nrow(sleep_over16) == 8, 
                              info = "p7c: Checking sleep_over16 has 8 rows")
      }
    )
  )
)