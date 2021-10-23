library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p10a
  points: 0.25
- hidden: false
  name: p10b
  points: 0.25
- hidden: false
  name: p10c
  points: 0.25
- hidden: false
  name: p10d
  points: 0.25
name: p10

"

test_that("p10a", {
  expect_true("ggplot" %in% class(p10))
  print("Checking: p10 is a ggplot")
  
})

test_that("p10b", {
  expect_true(identical(p10$data, our_sheet_diff))
  print("Checking: Used our_sheet_diff dataset")
  
})

test_that("p10c", {
  expect_true(rlang::quo_get_expr(p10$mapping$x) == "diff")
  print("Checking: diff is on the x-axis")
  
})

test_that("p10d", {
  expect_true("GeomBar" %in% class(p10$layers[[1]]$geom))
  print("Checking: Made a histogram")
  
})
