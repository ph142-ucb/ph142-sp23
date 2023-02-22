test = list(
  name = "p2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        test_that("p2a", {
          expect_true(is.numeric(p2))
          print("Checking: p2 is a number")
  
        })

        test_that("p2c", {
          expect_true(p2 == .2989)
          print("Checking: p2 is the correct probability")
  
        })
      }
    )
  )
)