test = list(
  name = "p18",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        test_that("p18a", {
          expect_true(all.equal(p18[1], 0.02784538 , tol = 0.001))
          print("Checking: value of lowerbound")
        })

        test_that("p18b", {
          expect_true(all.equal(p18[2], 0.44423779, tol = 0.001))
          print("Checking: value of upperbound")
        })
      }
    )
  )
)