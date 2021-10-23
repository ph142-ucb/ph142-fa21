library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p1a
  points: 0.2
- hidden: false
  name: p1b
  points: 0.2
- hidden: false
  name: p1c
  points: 0.2
- hidden: false
  name: p1d
  points: 0.2
- hidden: false
  name: p1e
  points: 0.2
name: p1

"

test_that("p1a", {
  expect_true("ggplot" %in% class(p1))
  print("Checking: p1 is a ggplot")
  
})

test_that("p1b", {
  expect_true(identical(p1$data, deeks1))
  print("Checking: Used deeks1 dataset")
  
})

test_that("p1c", {
  expect_true(rlang::quo_get_expr(p1$mapping$x) == "ave_cd4")
  print("Checking: ave_cd4 is on the x-axis")
  
})

test_that("p1d", {
  expect_true("GeomBar" %in% class(p1$layers[[1]]$geom))
  print("Checking: Made a histogram")
  
})

test_that("p1e", {
  expect_true("FacetWrap" %in% class(p1$facet))
  print("Checking: Made 2 plots: age = 1 and age = 0")
  
})
