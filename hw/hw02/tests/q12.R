test = list(
  name = "q12",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        expect_true("ggplot" %in% class(p12), "Checking: p12 is a ggplot")
        expect_true(rlang::quo_get_expr(p12$mapping$y) == "CS_rate_100", "Checking: CS_rate_100 is on the x axis")
        expect_true("GeomBoxplot" %in% class(p12$layers[[1]]$geom), "Checking: Made a boxplot")
      }
    )
  )
)