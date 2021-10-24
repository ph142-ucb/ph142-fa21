library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p22a
  points: 1
name: p22

"

test_that("p22a", {
  expect_true(all.equal(p22, 0.004012052, 0.001))
  print("Checking: Correct p-value")
})
