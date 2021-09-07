test = list(
  name = "p8",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.6666666666666666,
      code = {
        testthat::expect_true(is.data.frame(sleep_mammals), 
                              info = "p8a: Checking sleep_mammals is a dataframe")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.6666666666666666,
      code = {
        testthat::expect_true(ncol(sleep_mammals) == 11, 
                              info = "p8b: Chekcing sleep_mammals has 11 columns")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.6666666666666666,
      code = {
        testthat::expect_true(nrow(sleep_mammals) == 3, 
                              info = "p8c: Checking sleep_mammals has 3 rows")
      }
    )
  )
)