library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p15a
  points: 0.3333333333333333
- hidden: false
  name: p15b
  points: 0.3333333333333333
- hidden: false
  name: p15c
  points: 0.3333333333333333
name: p15

"

test_that("p15a", {
  expect_true(class(p15) == "numeric" & length(p15) == 1)
  print("Checking: p15 is numeric")
  
})

test_that("p15b", {
  expect_true(0 <= p15 & p15 <= 1)
  print("Checking: p15 is a probability")
  
})

test_that("p15c", {
  expect_true(p15 == 0.4)
  print("Checking: p15 is 0.4")
  
})
