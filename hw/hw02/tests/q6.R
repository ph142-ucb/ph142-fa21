test = list(
  name = "q6",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        expect_true("ggplot" %in% class(p6), "Checking: p6 is a ggplot")
        expect_true(all.equal(p6$layers[[2]]$mapping$xintercept, 11790.67, tol = 0.01), "Checking: First vline (mean) is set to the correct value")
        expect_true(all.equal(p6$layers[[3]]$mapping$xintercept, 3351.305, tol = 0.01), "Checking: Second vline (median) is set to the correct value")
      }
    )
  )
)