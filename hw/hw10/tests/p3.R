library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p3a
  points: 1
name: p3

"

test_that("p3a", {
  expect_true(rlang::quo_get_expr(p3$mapping$x) == "log_pop_density")
  print("Checking: Used log_pop_density in the x-axis")
})

