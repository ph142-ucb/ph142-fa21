library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p16a
  points: 0.3333333333333333
- hidden: false
  name: p16b
  points: 0.3333333333333333
- hidden: false
  name: p16c
  points: 0.3333333333333333
name: p16

"

test_that("p16a", {
  expect_true(ncol(p16) == 7)
  print("Checking: Correct number of columns")
  
})

test_that("p16b", {
  expect_true(nrow(p16) == 3)
  print("Checking: Correct number of rows")
  
})

test_that("p16c", {
  expect_true(all.equal(p16$estimate[1], 2.0589398, tol = 0.01))
  print("Checking: Correct estimates from the model")
  
})
