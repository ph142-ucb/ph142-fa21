test = list(
  name = "q8",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        expect_true("ggplot" %in% class(p8),"Checking: p8 is a ggplot")
        expect_true(!is.null(p8$facet$params[1]$facets$Income_Group) ||
                       !is.null(p8$facet$params[1]$facets$`"Income_Group"`), "Checking: A separate histogram for each level of the `Income_Group` variable has been made!")
      }
    )
  )
)