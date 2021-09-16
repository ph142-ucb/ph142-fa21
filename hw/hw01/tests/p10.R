test = list(
  name = "p10",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.3333333333333333,
      code = {
        test_that("p10a", {
          expect_true(is.data.frame(sleep_time))
          print("p10a: Checking sleep_time is a dataframe.")
        })
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.3333333333333333,
      code = {
        test_that("p10b", {
          expect_true(ncol(sleep_time) == 11)
          print("p10b: Checking sleep_time has 11 columns.")
        })
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.3333333333333333,
      code = {
        test_that("p10c", {
          expect_true(nrow(sleep_time) == 83)
          print("p10c: Checking sleep_time has 83 rows.")
        })
      }
    )
  )
)