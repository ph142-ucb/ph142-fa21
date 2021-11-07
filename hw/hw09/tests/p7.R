library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p7a
  points: 1
name: p7

"

test_that("p7a", {
  expect_true(p7 == "b")
  print("Checking: Correct answer choice")
})
