context("vectors")

test_that("Single element vectors are treated as scalars", {
  skip_if_no_python()
  pd <- import("pandas",as = "pd")

  df <- iris
  df <- r_to_py(df)

  df <- py_to_r(df)
  expect_is(df,"data.frame")
})
