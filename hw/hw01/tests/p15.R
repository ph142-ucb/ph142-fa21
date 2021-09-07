test = list(
  name = "p15",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.25,
      code = {
        testthat::expect_true(is.data.frame(avg_sleep_time), 
                              info = "p15a: Checking avg_sleep_time is a dataframe")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.25,
      code = {
        testthat::expect_true(ncol(avg_sleep_time) == 1 &&
                                nrow(avg_sleep_time) == 1, 
                              info = "p15b: Checking avg_sleep_time has 1 row and 1 column")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.25,
      code = {
        testthat::expect_true(is.numeric(avg_sleep_time$sleep_avg), 
                              info = "p15c: Checking sleep_avg column is numeric")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.25,
      code = {
        testthat::expect_true(all.equal(avg_sleep_time$sleep_avg, 10.43373, tol = 0.01), 
                              info = "p15d: Checking sleep avg column is 10.4337")
      }
    )
  )
)