test = list(
  name = "q13",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true("ggplot" %in% class(p13), 
                              info = "p13a: Checking p13 is a ggplot")

        testthat::expect_true(identical(p13$data, CS_data), 
                              info = "p13b: Using CS_data")

        testthat::expect_true(rlang::quo_get_expr(p13$mapping$x) == "GDP_2006", 
                              info = "p13c: Checking GDP_2006 is on the x-axis")

        testthat::expect_true("GeomBar" %in% class(p13$layers[[1]]$geom), 
                              info = "p13d: Made a histogram")
      }
    )
  )
)