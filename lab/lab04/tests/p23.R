library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p23a
  points: 0.3333333333333333
- hidden: false
  name: p23b
  points: 0.3333333333333333
- hidden: false
  name: p23c
  points: 0.3333333333333333
name: p23

"

test_that("p23a", {
  expect_true(class(p23) == "numeric" & length(p23) == 1)
  print("Checking: p23 is numeric")
  
})

test_that("p23b", {
  expect_true(0 <= p23 & p23 <= 1)
  print("Checking: p23 is a probability")
  
})

test_that("p23c", {
  expect_true(p23 == 0.8)
  print("Checking: p23 is 0.8")
  
})
