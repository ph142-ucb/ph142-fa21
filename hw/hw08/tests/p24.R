library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p24a
  points: 1
name: p24

"

test_that("p24a", {
  expect_true(p24 == "b")
  print("Checking: Correct answer choice")
})
