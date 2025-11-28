#' Generar una tabla resumen de temperatura
#'
#' Calcula media, minimo, maximo, desviacion estandar y cantidad de datos validos
#' de la columna `temperatura_abrigo_150cm`.
#'
#' @param df Data frame devuelto por `leer_datos_estacion()`
#'
#' @return Data frame con columnas: estacion, media, minimo, maximo, desv, n
#'
#' @examples
#' \dontrun{
#' df <- leer_datos_estacion("NH0437", "NH0437.csv")
#' tabla_resumen_temperatura(df)
#' }
#'
#' @export
#' @importFrom rlang .data
#' @importFrom cli cli_inform
#' @importFrom stats sd
tabla_resumen_temperatura <- function(df) {
  stopifnot(is.data.frame(df))

  req <- c("fecha", "temperatura_abrigo_150cm")
  faltan <- setdiff(req, names(df))
  if (length(faltan) > 0) {
    stop("Faltan columnas requeridas: ", paste(faltan, collapse = ", "))
  }

  est <- if ("id" %in% names(df)) unique(df$id)[1] else NA_character_

  resumen <- data.frame(
    estacion = est,
    media  = mean(df$temperatura_abrigo_150cm, na.rm = TRUE),
    minimo = min(df$temperatura_abrigo_150cm,  na.rm = TRUE),
    maximo = max(df$temperatura_abrigo_150cm,  na.rm = TRUE),
    desv   = stats::sd(df$temperatura_abrigo_150cm,   na.rm = TRUE),
    n      = sum(!is.na(df$temperatura_abrigo_150cm))
  )

  cli::cli_inform("Resumen generado para 1 estacion ({est}).")
  return(resumen)
}




