test = list(
  name = "q16",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true("ggplot" %in% class(p16), 
                              info = "p16a: Checking p16 is a ggplot")

        testthat::expect_true(identical(p16$data, CS_data), 
                              info = "p16b: Using CS_data")

        testthat::expect_true("GeomBar" %in% class(p16$layers[[1]]$geom), 
                              info = "16c: Made a histogram or a barchart")

        testthat::expect_true(length(p16$layers[[1]]$aes_params) !=0, 
        info = "p16d: Checking Fill color set")

        testthat::expect_true(length(p16$labels$y) !=0,
                              info = "p16e: Checking y-axis labeled")

        testthat::expect_true(length(p16$labels$x) !=0, 
                              info = "p16f: Checking x-axis labeled")

        testthat::expect_true(length(p16$labels$title) != 0, 
                              info = "p16g: Checking title added")
      }
    )
  )
)