test = list(
  name = "q1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        expect_true(aa == "CS_rate", info = "Hint: Try to understand what each part of the code on line 82 does!")
        expect_true(bb == "100" | bb == 100, info = 'Hint: Try to understand what each part of the code on line 82 does!')
        expect_true(cc == "CS_rate_100", info = 'Hint: Try to understand what each part of the code on line 82 does!')
      }
    )
  )
)