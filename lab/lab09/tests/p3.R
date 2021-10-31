library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p3a
  points: 0.5
- hidden: false
  name: p3b
  points: 0.5
name: p3

"

test_that("p3a", {
  expect_true(all.equal(plus_4_ci[1], 0.2341, tol = 0.01))
  print("Checking: Lower bound is correct")
  
})

test_that("p3b", {
  expect_true(all.equal(plus_4_ci[2], 0.5278, tol = 0.01))
  print("Checking: Upper bound is correct")
  
})
