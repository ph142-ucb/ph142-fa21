library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p1a
  points: 0.25
- hidden: false
  name: p1b
  points: 0.25
- hidden: false
  name: p1c
  points: 0.25
- hidden: false
  name: p1d
  points: 0.25
name: p1

"

test_that("p1a", {
  expect_true("ggplot" %in% class(p1))
  print("Checking: Made a ggplot")
})

test_that("p1b", {
  expect_true(identical(p1$data, counties_CA))
  print("Checking: Using counties_CA data")
})

test_that("p1c", {
  expect_true(rlang::quo_get_expr(p1$mapping$x) == "pop.density")
  print("Checking: pop.density is on the x-axis")
})

test_that("p1d", {
  expect_true("GeomPoint" %in% sapply(p1$layers, function(x) class(x$geom)[1]))
  print("Checking: Made a scatter plot")
})
