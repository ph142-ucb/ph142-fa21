library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p6a
  points: 1
name: p6

"

test_that("p6a", {
  expect_true(all.equal(p6, 0.00, tol = 0.01))
  print("Checking: Correct p-value")
})
