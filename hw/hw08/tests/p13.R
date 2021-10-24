library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p13a
  points: 1
name: p13

"

test_that("p13a", {
  expect_true(all.equal(p13, 2.48172e-20, 0.001))
  print("Checking: Correct p-value")
})
