library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p4a
  points: 1
name: p4

"

test_that("p4a", {
  expect_true(all.equal(p4, 0.6381187, tol = 0.01))
  print("Checking: Correct correlation coefficient")
})

