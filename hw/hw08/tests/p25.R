library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p25a
  points: 1
name: p25

"

test_that("p25a", {
  expect_true(p25 == "c")
  print("Checking: Correct answer choice")
})
