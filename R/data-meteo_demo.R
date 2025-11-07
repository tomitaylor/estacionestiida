#' Datos meteorológicos de ejemplo (NH0437)
#'
#' Subconjunto de 100 registros de la estación meteorológica NH0437 del SMN.
#' Incluye variables básicas de temperatura y humedad, útiles para ejemplos y tests.
#'
#' @format Un tibble con 100 filas y 3 columnas:
#' \describe{
#'   \item{fecha}{Fecha de registro (Date)}
#'   \item{temperatura_abrigo_150cm}{Temperatura media del aire a 1,5 m (°C)}
#'   \item{humedad_media_8_14_20}{Humedad relativa media (%, promedios de 8, 14 y 20 h)}
#' }
#'
#' @source Servicio Meteorológico Nacional (SMN)
#'
#' @examples
#' data(meteo_demo)
#' head(meteo_demo)
"meteo_demo"
