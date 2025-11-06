test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})
test_that("el paquete carga correctamente", {
  library(estacionestiida)
  expect_true(TRUE)
})
