test = list(
  name = "q7",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true("ggplot" %in% class(p7), 
                              info = "p7a: Checking p7 is a ggplot")

        testthat::expect_true(identical(p7$data, CS_data), 
                              info = "p7b: Using CS_data")

        testthat::expect_true(rlang::quo_get_expr(p7$mapping$x) == "Income_Group_order",
                              info = "p7c: Income_Group_order is on the x-axis")

        testthat::expect_true("GeomBar" %in% class(p7$layers[[1]]$geom), 
                              info = "p7d: Made a barchart")
      }
    )
  )
)