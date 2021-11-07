library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p12a
  points: 1
name: p12

"

test_that("p12a", {
  expect_true(all.equal(p12, 40.55, tol = 0.01))
  print("Checking: Correct test statistic")
})
