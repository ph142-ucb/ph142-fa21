test = list(
  name = "q3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 3.0,
      code = {
        testthat::expect_true(is.data.frame(CS_data), 
                               info = "p3a: Checking CS_data is a dataframe")

        testthat::expect_true(nrow(CS_data) == 137 && ncol(CS_data) == 9, 
                               info = "p3b: Checking CS_data has137 rows and 9 columns")

        testthat::expect_true(all.equal(CS_data$CS_rate[1]*100, CS_data$CS_rate_100[1]), 
                               info = "p3c: Checking CS_rate_100 == CS_rate*100")
      }
    )
  )
)