library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p7a
  points: 0.5
- hidden: false
  name: p7b
  points: 0.5
name: p7

"

test_that("p7a", {
  expect_true(all.equal(p7[1], 0.1292549, 0.001))
  print("Checking: Correct lower bound")
})

test_that("p7b", {
  expect_true(all.equal(p7[2], 0.1473067, 0.001))
  print("Checking: Correct upper bound")
})
