library(testthat)

test_metadata = "
cases:
- hidden: false
  name: sampleSize_answer
  points: 1
name: sampleSize_answer

"

test_that("sampleSize_answer", {
  expect_true(sampleSize_answer == "c")
  print("Checking: sampleSize is 500")
})
