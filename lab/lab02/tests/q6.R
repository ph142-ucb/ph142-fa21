test = list(
  name = "q6",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true("ggplot" %in% class(p6), 
                              info = "p6a: Checking p6 is a ggplot")

        testthat::expect_true(identical(p6$data, CS_data), 
                              info = "p6b: Using CS_data")

        testthat::expect_true(rlang::quo_get_expr(p6$mapping$x) == "Income_Group", 
                              info = "p6c: Checking Income_Group is on the x-axis")

        testthat::expect_true("GeomBar" %in% class(p6$layers[[1]]$geom), 
                              info = "p6d: Made a barchart")

      }
    )
  )
)