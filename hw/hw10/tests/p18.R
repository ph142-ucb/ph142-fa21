library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p18a
  points: 1
name: p18

"

test_that("p18a", {
  expect_true(all.equal(p18, 0.1579, tol = 0.01))
  print("Checking: Correct p-value")
  
})
