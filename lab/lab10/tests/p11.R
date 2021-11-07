library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p11a
  points: 0.3333333333333333
- hidden: false
  name: p11b
  points: 0.3333333333333333
- hidden: false
  name: p11c
  points: 0.3333333333333333
name: p11

"

test_that("p11a", {
  expect_true(ncol(chd_by_anger_level) == 8)
  print("Checking: Correct number of columns in the dataframe")
  
})

test_that("p11b", {
  expect_true(colnames(chd_by_anger_level)[8] == "cond_prop_anger")
  print("Checking: Correct column name")
  
})

test_that("p11c", {
  expect_true(all.equal(chd_by_anger_level$cond_prop_anger[1], 0.27894737, tol = 0.01))
  print("Checking: Correct conditional probabilities")
  
})
