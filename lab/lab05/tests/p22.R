library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p22a
  points: 0.5
- hidden: false
  name: p22b
  points: 0.5
name: p22

"

test_that("p22a", {
  expect_true(between(p22, 0, 1))
  print("Checking: p22 is a value between 0 and 1")
})

test_that("p22b", {
  expect_true(all.equal(p22, 0.01222447, tol = 0.01))
  print("Checking: p22 is the correct probability")
})
