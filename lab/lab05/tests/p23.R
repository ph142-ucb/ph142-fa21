library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p23a
  points: 0.5
- hidden: false
  name: p23b
  points: 0.5
name: p23

"

test_that("p23a", {
  expect_true(between(p23, 0, 1))
  print("Checking: p23 is a value between 0 and 1")
})

test_that("p23b", {
  expect_true(all.equal(p23, 0.9877755, tol = 0.01))
  print("Checking: p23 is the correct probability")
})
