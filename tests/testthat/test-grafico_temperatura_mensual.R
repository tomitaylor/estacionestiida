test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})
test_that("grafico_temperatura_mensual devuelve un ggplot con datos reales", {
  ruta <- system.file("extdata", "NH0437.csv", package = "estacionestiida")
  df <- suppressWarnings(leer_datos_estacion("NH0437", ruta_archivo = ruta))


  p <- grafico_temperatura_mensual(df)
  expect_s3_class(p, "ggplot")

  gb <- ggplot2::ggplot_build(p)
  expect_true(length(gb$data) >= 1)
})

test_that("grafico_temperatura_mensual funciona con datos mínimos", {
  df <- data.frame(
    id = "X",
    fecha = as.Date("2024-01-01") + 0:2,
    temperatura_abrigo_150cm = c(20, 22, 24)
  )
  p <- grafico_temperatura_mensual(df)
  expect_s3_class(p, "ggplot")
})
