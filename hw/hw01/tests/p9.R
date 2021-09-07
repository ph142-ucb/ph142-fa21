test = list(
  name = "p9",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.25,
      code = {
        testthat::expect_true(is.data.frame(sleep_hg), 
                              info = "p9a: Checking sleep_hg is a dataframe")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.25,
      code = {
        testthat::expect_true(ncol(sleep_hg) == 11, 
                               info = "p9b: Checking sleep_hg has 11 columns")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.25,
      code = {
        testthat::expect_true(nrow(sleep_hg) == 2, 
                                   info = "p9c: Checking sleep_hg has 2 rows")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.25,
      code = {
        testthat::expect_true("Horse" %in% sleep_hg$name && 
                                "Giraffe" %in% sleep_hg$name, 
                              info = "p9d: Checking sleep_hg has the correct rows")
      }
    )
  )
)