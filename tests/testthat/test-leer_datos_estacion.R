test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})
test_that("leer_datos_estacion devuelve un data.frame válido", {
  ruta <- system.file("extdata", "NH0437.csv", package = "estacionestiida")
  datos <- suppressWarnings(leer_datos_estacion("NH0437", ruta_archivo = ruta))


  expect_s3_class(datos, c("tbl_df","tbl","data.frame"))
  expect_true(nrow(datos) > 0)
  expect_true(all(c("fecha","temperatura_abrigo_150cm") %in% names(datos)))
})

test_that("leer_datos_estacion falla si el ID no existe", {
  ruta <- tempfile(fileext = ".csv")
  expect_error(
    leer_datos_estacion("ESTACION_INEXISTENTE", ruta_archivo = ruta),
    regexp = "desconocid|inexistente|no.*válid", ignore.case = TRUE
  )
})

