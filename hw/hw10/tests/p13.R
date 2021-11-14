library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p13a
  points: 0.25
- hidden: false
  name: p13b
  points: 0.25
- hidden: false
  name: p13c
  points: 0.25
- hidden: false
  name: p13d
  points: 0.25
name: p13

"

test_that("p13a", {
  expect_true(ncol(p13) == 3)
  print("Checking: Correct number of columns")
})


test_that("p13b", {
  expect_true(nrow(p13) == 3)
  print("Checking: Correct number of rows")
})


test_that("p13c", {
  expect_true(all.equal(p13$mean[1], 111.0524, tol = 0.01))
  print("Checking: Correct mean values")
})


test_that("p13d", {
  expect_true(all.equal(p13$sd[1], 35.00980, tol = 0.01))
  print("Checking: Correct sd values")
})

