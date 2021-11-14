library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p3a
  points: 1
name: p3

"

test_that("p3a", {
  expect_true(all.equal(p3, 0.182603, tol = 0.01))
  print("Checking: correct r-squared value")
  
})
