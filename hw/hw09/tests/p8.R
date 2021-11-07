library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p8a
  points: 1
name: p8

"

test_that("p8a", {
  expect_true(p8 == "a")
  print("Checking: Correct answer choice")
})
