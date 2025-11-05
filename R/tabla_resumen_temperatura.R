#' Generar una tabla resumen de temperatura
#'
#' Calcula, para cada estación, la media, mínimo, máximo y desviación
#' estándar de la temperatura a 150 cm de abrigo.
#'
#' @param ... Uno o más data frames devueltos por `leer_datos_estacion()`
#'
#' @return Un data frame con los valores resumen de temperatura
#' @export


tabla_resumen_temperatura <- function(...) {
  datos <- list(...)

  # controlar que sean data frames
  if (!all(vapply(datos, is.data.frame, logical(1)))) {
    cli::cli_abort("Todos los objetos deben ser data frames.")
  }

  resumen_total <- data.frame()

  for (df in datos) {
    est <- unique(df$id)

    resumen <- data.frame(
      estacion = est,
      media = mean(df$temperatura_abrigo_150cm, na.rm = TRUE),
      minimo = min(df$temperatura_abrigo_150cm, na.rm = TRUE),
      maximo = max(df$temperatura_abrigo_150cm, na.rm = TRUE),
      desv = sd(df$temperatura_abrigo_150cm, na.rm = TRUE),
      n = sum(!is.na(df$temperatura_abrigo_150cm))
    )

    print(resumen)
    resumen_total <- rbind(resumen_total, resumen)
  }

  cli::cli_inform("Resumen generado para {nrow(resumen_total)} estación(es).")
  return(resumen_total)
}

