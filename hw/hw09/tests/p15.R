library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p15a
  points: 0.14285714285714285
- hidden: false
  name: p15b
  points: 0.14285714285714285
- hidden: false
  name: p15c
  points: 0.14285714285714285
- hidden: false
  name: p15d
  points: 0.14285714285714285
- hidden: false
  name: p15e
  points: 0.14285714285714285
- hidden: false
  name: p15f
  points: 0.14285714285714285
- hidden: false
  name: p15g
  points: 0.14285714285714285
name: p15

"

test_that("p15a", {
  expect_true(p15[1] == "confidence intervals")
  print("Checking: confidence intervals")
})

test_that("p15b", {
  expect_true(p15[2] == "hypothesis tests")
  print("Checking: hypothesis tests")
})

test_that("p15c", {
  expect_true(p15[3] == "with")
  print("Checking: with")
})

test_that("p15d", {
  expect_true(p15[4] == "same")
  print("Checking: same")
})

test_that("p15e", {
  expect_true(p15[5] == "histogram")
  print("Checking: histogram")
})

test_that("p15f", {
  expect_true(p15[6] == "2.5")
  print("Checking: 2.5")
})

test_that("p15g", {
  expect_true(p15[7] == "97.5")
  print("Checking: 97.5")
})
