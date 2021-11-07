library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p2a
  points: 0.3333333333333333
- hidden: false
  name: p2b
  points: 0.3333333333333333
- hidden: false
  name: p2c
  points: 0.3333333333333333
name: p2

"

test_that("p2a", {
  expect_true(all.equal(p2[1], 105.75, tol = 0.01))
  print("Checking: Expected value for full pay is correct")
})

test_that("p2b", {
  expect_true(all.equal(p2[2], 36.00, tol = 0.01))
  print("Checking: Expected value for partial pay is correct")
})

test_that("p2c", {
  expect_true(all.equal(p2[3], 83.25, tol = 0.01))
  print("Checking: Expected value for no pay is correct")
})
