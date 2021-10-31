library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p1a
  points: 0.5
- hidden: false
  name: p1b
  points: 0.5
name: p1

"

test_that("p1a", {
  expect_true(all.equal(large_sample_ci[1], 0.2150, tol = 0.01))
  print("Checking: Lower bound is correct")
  
})

test_that("p1b", {
  expect_true(all.equal(large_sample_ci[2], 0.5218, tol = 0.01))
  print("Checking: Upper bound is correct")
  
})
