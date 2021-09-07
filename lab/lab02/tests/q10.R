test = list(
  name = "q10",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true("ggplot" %in% class(p10), 
                              info = "p10a: Checking p10 is a ggplot")

        testthat::expect_true(identical(p10$data, CS_data), 
                              info = "p10b: Using CS_data")

        testthat::expect_true(rlang::quo_get_expr(p10$mapping$x) == "Region", 
                              info = "p10c: Checking Region is on the x-axis")

        testthat::expect_true("GeomBar" %in% class(p10$layers[[1]]$geom), 
                              info = "p10d: Made a barchart")
      }
    )
  )
)