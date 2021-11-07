library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p14a
  points: 1
name: p14

"

test_that("p14a", {
  expect_true(all.equal(p14, 0.0003228312, tol = 0.01))
  print("Checking: Correct p-value")
  
})
