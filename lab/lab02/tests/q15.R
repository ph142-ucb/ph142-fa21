test = list(
  name = "q15",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true("ggplot" %in% class(p15), 
                              info = "Checking p15 is a ggplot")

        testthat::expect_true(identical(p15$data, CS_data), 
                              info = "p15b: Using CS_data")

        testthat::expect_true(rlang::quo_get_expr(p15$mapping$x) == "CS_rate_100", 
                              info = "p15c: Checking CS_rate_100 is on the x-axis")

        testthat::expect_true("GeomBar" %in% class(p15$layers[[1]]$geom), 
                             info = "p15d: Made a histogram")

        testthat::expect_true(length(p15$layers[[1]]$stat_params$binwidth) !=0, 
                              info = "p15e: Checking binwdith chosen")
      }
    )
  )
)