test = list(
  name = "p2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.6666666666666666,
      code = {
        testthat::expect_true(is.data.frame(sleep_small), 
                              info = "p2a: Checking sleep_small is a dataframe")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.6666666666666666,
      code = {
        testthat::expect_true(ncol(sleep_small) == 3, 
                              info = "p2b: Checking sleep_small has 3 columns")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.6666666666666666,
      code = {
        testthat::expect_true(all(names(sleep_small) == c("awake", "brainwt", "bodywt")),
                                  info = "p2c: Checking sleep_small has 'awake', 'brainwt', and 'bodywt'")
      }
    )
  )
)