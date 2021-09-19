library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p22a
  points: 0.3333333333333333
- hidden: false
  name: p22b
  points: 0.3333333333333333
- hidden: false
  name: p22c
  points: 0.3333333333333333
name: p22

"

test_that("p22a", {
  expect_true(class(p22) == "numeric" & length(p22) == 1)
  print("Checking: p22 is numeric")
  
})

test_that("p22b", {
  expect_true(0 <= p22 & p22 <= 1)
  print("Checking: p22 is a probability")
  
})

test_that("p22c", {
  expect_true(p22 == 0.2)
  print("Checking: p22 is 0.2")
  
})
