library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p5a
  points: 1
name: p5

"

test_that("p5a", {
  expect_true(all.equal(reject_value, 7.8147, tol = 0.01))
  print("Checking: Correct value on the chi-squared distribution")
  
})
