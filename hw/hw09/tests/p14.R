library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p14a
  points: 1
name: p14

"

test_that("p14a", {
  expect_true(p14 == "b")
  print("Checking: Correct answer choice")
})
