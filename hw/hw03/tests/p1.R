test = list(
  name = "p1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        test_that("p1a", {
          expect_true(is.data.frame(insure_data))
          print("Checking: loaded the data and saved as `insure_data`")
        })

        test_that("p1b", {
          expect_true(typeof(insure_data$sex) == "character")
          print("Checking: form of the data-reading function used: _ or .")
        })
      }
    )
  )
)