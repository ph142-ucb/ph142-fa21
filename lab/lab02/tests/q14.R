test = list(
  name = "q14",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true("ggplot" %in% class(p14), 
                              info = "p14a: Checking p14 is a ggplot")

        testthat::expect_true(identical(p14$data, CS_data), 
                              info = "p14b: Using CS_data")

        testthat::expect_true(rlang::quo_get_expr(p14$mapping$x) == "GDP_2006", 
                              info = "p14c: Checking GDP_2006 is on the x-axis")

        testthat::expect_true("GeomBar" %in% class(p14$layers[[1]]$geom), 
                              info = "p14d: Made a histogram")

        testthat::expect_true(length(p14$layers[[1]]$stat_params$binwidth) != 0, 
                              info = "p14e: Checking binwidth chosen")
      }
    )
  )
)