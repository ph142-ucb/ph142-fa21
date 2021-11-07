library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p4a
  points: 1
name: p4

"

test_that("p4a", {
  expect_true(all.equal(p4, 68.66, tol = 0.01))
  print("Checking: Correct chi-square test statistic")
})
