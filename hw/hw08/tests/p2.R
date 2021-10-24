library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p2a
  points: 1
name: p2

"

test_that("p2a", {
  expect_true(all.equal(p2, 514, tol = 0.01))
  print("Checking: Sample size is correct")
})
