testthat::test_that("readSOdata works", {
  df <- readSOdata::readSOdata('| number | A | B | C | D |
   | 0.3    | 0 |1  | 0 |1  |
   | 0.4    |1  |1  |1  |0  |')
  testthat::expect_equal(nrow(df), 2)
  testthat::expect_equal(ncol(df), 5)
})
