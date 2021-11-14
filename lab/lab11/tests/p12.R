library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p12a
  points: 0.25
- hidden: false
  name: p12b
  points: 0.25
- hidden: false
  name: p12c
  points: 0.25
- hidden: false
  name: p12d
  points: 0.25
name: p12

"

test_that("p12a", {
  expect_true(all.equal(p12[1], 20.20, tol = 0.01))
  print("Checking: lowerbound for dis = 2.5 miles")
  
})

test_that("p12b", {
  expect_true(all.equal(p12[2], 22.95, tol = 0.01))
  print("Checking: lowerbound for dis = 5 miles")
  
})

test_that("p12c", {
  expect_true(all.equal(p12[3], 25.00, tol = 0.01))
  print("Checking: lowerbound for dis = 7.5 miles")
  
})

test_that("p12d", {
  expect_true(all.equal(p12[4], 26.88, tol = 0.01))
  print("Checking: lowerbound for dis = 10 miles")
  
})
