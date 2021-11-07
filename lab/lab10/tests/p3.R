library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p3a
  points: 1
name: p3

"

test_that("p3a", {
  expect_true(all.equal(p3, 0.00, tol = 0.01))
  print("Checking: p3 is the correct p-value")
  
})
