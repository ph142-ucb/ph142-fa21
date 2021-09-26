library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p14a
  points: 0.5
- hidden: false
  name: p14b
  points: 0.5
name: p14

"

test_that("p14a", {
  expect_true(between(p14, 2000, 2400))
  print("Checking: p14 is a birthweight in grams")
})

test_that("p14b", {
  expect_true(all.equal(p14, qnorm(0.25, mean = 2750, sd = 560), tol = 0.01))
  print("Checking: p14 is the correct weight for the 25th percentile")
})
