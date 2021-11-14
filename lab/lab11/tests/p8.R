library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p8a
  points: 0.5
- hidden: false
  name: p8b
  points: 0.5
name: p8

"

test_that("p8a", {
  expect_true(all.equal(p8[1], 0.7215, tol = 0.01))
  print("Checking: correct lower bound")
  
})

test_that("p8b", {
  expect_true(all.equal(p8[2], 1.4617, tol = 0.01))
  print("Checking: correct upper bound")
  
})
