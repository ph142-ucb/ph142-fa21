library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p5a
  points: 0.3333333333333333
- hidden: false
  name: p5b
  points: 0.3333333333333333
- hidden: false
  name: p5c
  points: 0.3333333333333333
name: p5

"

test_that("p5a", {
  expect_true(class(one_hundred_flips_2) == "integer")
  print("Checking: one_hundred_filps_2 is an integer")
  
})

test_that("p5b", {
  expect_true(length(one_hundred_flips_2) == 100)
  print("Checking: 100 flips")
  
})

test_that("p5c", {
  expect_true(all(range(as.data.frame(one_hundred_flips_2)) == c(0,1)))
  print("Checking: output is binary - either zero or one")
  
})

