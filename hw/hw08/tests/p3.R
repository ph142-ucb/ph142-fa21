library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p3a
  points: 1
name: p3

"

test_that("p3a", {
  expect_true(p3 == "a")
  print("Checking: Correct answer choice")
})
