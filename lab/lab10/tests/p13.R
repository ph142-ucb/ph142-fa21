library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p13a
  points: 1
name: p13

"

test_that("p13a", {
  expect_true(all.equal(p13, 16.07676, tol = 0.01))
  print("Checking: Correct chi-squared test statistic")
  
})
