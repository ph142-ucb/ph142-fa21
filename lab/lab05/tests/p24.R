library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p24a
  points: 0.5
- hidden: false
  name: p24b
  points: 0.5
name: p24

"

test_that("p24a", {
  expect_true(between(p24, 0, 1))
  print("Checking: p24 is a value between 0 and 1")
})

test_that("p24b", {
  expect_true(all.equal(p24, 0.03836357, tol = 0.01))
  print("Checking: p24 is the correct probability")
})
