library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p5a
  points: 1
name: p5

"

test_that("p5a", {
  expect_true(all.equal(p5, 0.4071955, tol = 0.01))
  print("Checking: Correct r squared value")
})

