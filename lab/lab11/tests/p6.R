library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p6a
  points: 1
name: p6

"

test_that("p6a", {
  expect_true(all.equal(as.numeric(p6$coefficients[1]), 18.39009, tol = 0.01))
  print("Checking: correct linear model")
  
})
