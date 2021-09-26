library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p25a
  points: 0.5
- hidden: false
  name: p25b
  points: 0.5
name: p25

"

test_that("p25a", {
  expect_true(between(p25, 0, 1))
  print("Checking: p25 is a value between 0 and 1")
})

test_that("p25b", {
  expect_true(all.equal(p25, 0.949412, tol = 0.01))
  print("Checking: p25 is the correct probability")
})
