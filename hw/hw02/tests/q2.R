test = list(
  name = "q2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        expect_true(p2 == "skewed right", "Checking: Is p2 correct")
      }
    )
  )
)