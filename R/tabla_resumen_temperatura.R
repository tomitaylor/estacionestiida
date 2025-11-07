#' Generar una tabla resumen de temperatura
#'
#' Calcula media, mínimo, máximo, desviación y cantidad de datos válidos
#' de la columna `temperatura_abrigo_150cm`.
#'
#' @param df Data frame devuelto por `leer_datos_estacion()`
#' @return Data frame con columnas: estacion, media, minimo, maximo, desv, n
#' @export
#' @importFrom rlang .data
#' @importFrom cli cli_inform
tabla_resumen_temperatura <- function(df) {
  stopifnot(is.data.frame(df))

  # ✅ Validación temprana
  req <- c("fecha", "temperatura_abrigo_150cm")
  faltan <- setdiff(req, names(df))
  if (length(faltan) > 0) {
    stop("Faltan columnas requeridas: ", paste(faltan, collapse = ", "))
  }

  # identificamos la estación si tiene columna 'id'
  est <- if ("id" %in% names(df)) unique(df$id)[1] else NA_character_

  # cálculo de resumen
  resumen <- data.frame(
    estacion = est,
    media  = mean(df$temperatura_abrigo_150cm, na.rm = TRUE),
    minimo = min(df$temperatura_abrigo_150cm,  na.rm = TRUE),
    maximo = max(df$temperatura_abrigo_150cm,  na.rm = TRUE),
    desv   = sd(df$temperatura_abrigo_150cm,   na.rm = TRUE),
    n      = sum(!is.na(df$temperatura_abrigo_150cm))
  )

  cli::cli_inform("Resumen generado para 1 estación ({est}).")
  return(resumen)
}


