library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p15a
  points: 0.5
- hidden: false
  name: p15b
  points: 0.5
name: p15

"

test_that("p15a", {
  expect_true(between(p15, 3000, 3500))
  print("Checking: p15 is a birthweight in grams")
})

test_that("p15b", {
  expect_true(all.equal(p15,qnorm(0.9, mean = 2750, sd = 560), tol = 0.01))
  print("Checking: p15 is the correct weight for the 90th percentile")
})
