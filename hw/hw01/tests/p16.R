test = list(
  name = "p16",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.3333333333333333,
      code = {
        testthat::expect_true(is.data.frame(avg_by_vore), 
                              info = "p16a: Checking avg_by_vore is a dataframe")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.3333333333333333,
      code = {
        testthat::expect_true(ncol(avg_by_vore) == 2 &&
                                nrow(avg_by_vore) == 5,
                               info = "p16b: Checking avg_by_vore has 5 rows and 2 columns")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.3333333333333333,
      code = {
        testthat::expect_true(identical(names(avg_by_vore), c("vore", "sleep_avg")), 
                              info = "p16c: Checking column names are vore and sleep_avg")
      }
    )
  )
)