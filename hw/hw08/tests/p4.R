library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p4a
  points: 0.5
- hidden: false
  name: p4b
  points: 0.5
name: p4

"

test_that("p4a", {
  expect_true(all.equal(p4[1], 0.1290011, 0.001))
  print("Checking: Correct lower bound")
})

test_that("p4b", {
  expect_true(all.equal(p4[2], 0.1470452, 0.001))
  print("Checking: Correct upper bound")
})
