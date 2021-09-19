library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p19
  points: 1
name: p19

"

test_that("p19", {
  expect_true(p19 == 0)
  print("Checking: p19 is 0")
  
})
