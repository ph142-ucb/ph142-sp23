test = list(
  name = "p15",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        test_that("p15a", {
          expect_true("ggplot" %in% class(p15))
          print("Checking: p15 is a ggplot")
        })

        test_that("p15b", {
          expect_true(identical(p15$data, CS_data))
          print("Checking: Using CS_data")
        })

        test_that("p15c", {
          expect_true(rlang::quo_get_expr(p15$mapping$x) == "CS_rate_100")
          print("Checking: CS_rate_100 is on the x-axis")
        })

        test_that("p15d", {
          expect_true("GeomBar" %in% class(p15$layers[[1]]$geom))
          print("Checking: Made a histogram")
        })

        test_that("p15e", {
          expect_true(length(p15$layers[[1]]$stat_params$binwidth) != 0)
          print("Checking: Binwidth chosen")
        })
      }
    )
  )
)