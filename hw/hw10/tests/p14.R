library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p14a
  points: 0.25
- hidden: false
  name: p14b
  points: 0.25
- hidden: false
  name: p14c
  points: 0.25
- hidden: false
  name: p14d
  points: 0.25
name: p14

"

test_that("p14a", {
  expect_true("ggplot" %in% class(p14))
  print("Checking: Made a ggplot")
  
})

test_that("p14b", {
  expect_true(identical(p14$data, nhanes))
  print("Checking: Using nhanes data")
})

test_that("p14c", {
  expect_true(rlang::quo_get_expr(p14$mapping$x) == "bpcat")
  print("Checking: bpcat is on the x-axis")
})

test_that("p14d", {
  expect_true("GeomBoxplot" %in% sapply(p14$layers, function(x) class(x$geom)[1]))
  print("Checking: Made a box plot")
})
