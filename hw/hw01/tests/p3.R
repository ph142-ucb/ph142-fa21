test = list(
  name = "p3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.3333333333333333,
      code = {
        testthat::expect_true(is.data.frame(sleep_small_colon), 
                              info = "p3a: Checking sleep_small_colon is a dataframe")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.3333333333333333,
      code = {
        testthat::expect_true(ncol(sleep_small_colon) == 3, 
                              info = "p3b: Checking sleep_small_colon has 3 columns")

      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.3333333333333333,
      code = {
        testthat::expect_true(all(names(sleep_small_colon) == c("awake", "brainwt", "bodywt")), 
                              info = "p3c: Checking sleep_small_colon has 'awake', 'brainwt', and 'bodywt'")
      }
    )
  )
)