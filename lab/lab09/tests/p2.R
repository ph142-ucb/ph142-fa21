library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p2a
  points: 0.5
- hidden: false
  name: p2b
  points: 0.5
name: p2

"

test_that("p2a", {
  expect_true(all.equal(wilson_score_ci[1], 0.2229, tol = 0.01))
  print("Checking: Lower bound is correct")
  
})

test_that("p2b", {
  expect_true(all.equal(wilson_score_ci[2], 0.5400, tol = 0.01))
  print("Checking: Upper bound is correct")
  
})
