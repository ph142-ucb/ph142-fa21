library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p6a
  points: 1
name: p6

"

test_that("p6a", {
  expect_true(all.equal(CA_augment$.fitted[1], 49.93225, tol = 0.01))
  print("Checking: Correct augmented model")
})

