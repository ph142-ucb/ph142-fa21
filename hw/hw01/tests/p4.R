test = list(
  name = "p4",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.3333333333333333,
      code = {
        testthat::expect_true(is.data.frame(sleep_no_vore), 
                              info = "p4a: Checking sleep_small_colon is a dataframe")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.3333333333333333,
      code = {
        testthat::expect_true(ncol(sleep_no_vore) == 10, 
                              info = "p4b: Checking sleep_small_vore has 10 columns")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.3333333333333333,
      code = {
        testthat::expect_true(!("vore" %in% names(sleep_no_vore)), 
                              info = "p4c: Checking sleep_no_vore has no columns with 'vore'")
      }
    )
  )
)