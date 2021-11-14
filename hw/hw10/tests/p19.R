library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p19a
  points: 1
name: p19

"

test_that("p19a", {
  expect_true(all.equal(p19, 0.157, tol = 0.01))
  print("Checking: Correct p-value")
  
})
