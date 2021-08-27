test = list(
  name = "p1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_true(length(p1)== 4,
                              info = "p1a: Checking p1 has 4 items in a list")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_true(p1[1] == "dim" & p1[2] == "head" & p1[3] == "names" & p1[4] == "str",
        info = "p1b: Checking the names of the 4 functions in alphabetical order")
      }
    )
  )
)