library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p18a
  points: 0.5
- hidden: false
  name: p18b
  points: 0.5
name: p18

"

test_that("p18a", {
  expect_true(between(p18, 3900, 4000))
  print("Checking p18 is a birthweight in grams")
})

test_that("p18b", {
  expect_true(all.equal(p18, qnorm(0.90, mean = 3350, sd = 440), tol = 0.01) )
  print("Checking: p18 is the correct weight for the 90th percentile")
})
