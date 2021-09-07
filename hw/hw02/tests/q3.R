test = list(
  name = "q3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        expect_true(p3 == "larger than", "Checking: Is p3 correct")
      }
    )
  )
)