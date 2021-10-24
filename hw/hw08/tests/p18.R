library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p18a
  points: 0.5
- hidden: false
  name: p18b
  points: 0.5
name: p18

"

test_that("p18a", {
  expect_true(all.equal(p18[1], 0.02784538, 0.001))
  print("Checking: Correct lower bound")
})

test_that("p18b", {
  expect_true(all.equal(p18[2], 0.44423779, 0.001))
  print("Checking: Correct upper bound")
})
