library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p9a
  points: 1
name: p9

"

test_that("p9a", {
  expect_true(all.equal(p9, 0.06, tol = 0.01))
  print("Checking: correct r-squared value")
  
})
