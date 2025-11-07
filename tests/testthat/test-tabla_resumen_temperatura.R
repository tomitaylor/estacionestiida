test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})
test_that("tabla_resumen_temperatura calcula resumen de la estación", {
  ruta <- system.file("extdata", "NH0437.csv", package = "estacionestiida")
  df <- suppressWarnings(leer_datos_estacion("NH0437", ruta_archivo = ruta))

  out  <- tabla_resumen_temperatura(df)

  expect_s3_class(out, c("tbl_df","tbl","data.frame"))
  expect_true(all(c("media","minimo","maximo","desv","n") %in% names(out)))
  expect_true(is.numeric(out$media))
  expect_true(out$n >= 1)
})

test_that("tabla_resumen_temperatura valida columnas requeridas", {
  df_mal <- data.frame(fecha = as.Date("2024-01-01"))
  expect_error(
    tabla_resumen_temperatura(df_mal),
    regexp = "temperatura_abrigo_150cm|faltan columnas", ignore.case = TRUE
  )
})

test_that("tabla_resumen_temperatura maneja NA en temperatura", {
  ruta <- system.file("extdata", "NH0437.csv", package = "estacionestiida")
  df   <- leer_datos_estacion("NH0437", ruta_archivo = ruta)

  set.seed(1)
  idx <- seq(1, min(nrow(df), 20), by = 3)
  df$temperatura_abrigo_150cm[idx] <- NA

  out <- tabla_resumen_temperatura(df)
  expect_true(all(c("media","minimo","maximo","desv","n") %in% names(out)))
  expect_false(is.na(out$media))
  expect_true(out$n >= 1)
})
