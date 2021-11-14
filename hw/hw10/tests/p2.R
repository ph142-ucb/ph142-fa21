library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p2a
  points: 1
name: p2

"

test_that("p2a", {
  expect_true("GeomTextRepel" %in% sapply(p2$layers, function(x) class(x$geom)[1]))
  print("Checking: Used geom_text_repel")
})
