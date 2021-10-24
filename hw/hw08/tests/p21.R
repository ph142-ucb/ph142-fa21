library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p21a
  points: 1
name: p21

"

test_that("p21a", {
  expect_true(all.equal(p21, 2.877213, 0.001))
  print("Checking: Correct test statistic")
})
