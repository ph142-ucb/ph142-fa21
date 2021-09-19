library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p14a
  points: 0.3333333333333333
- hidden: false
  name: p14b
  points: 0.3333333333333333
- hidden: false
  name: p14c
  points: 0.3333333333333333
name: p14

"

test_that("p14a", {
  expect_true(class(p14) == "numeric" & length(p14) == 1)
  print("Checking: p14 is numeric")
  
})

test_that("p14b", {
  expect_true(0 <= p14 & p14 <= 1)
  print("Checking: p14 is a probability")
  
})

test_that("p14c", {
  expect_true(p14 == 0.4)
  print("Checking: p14 is 0.4")
  
})
