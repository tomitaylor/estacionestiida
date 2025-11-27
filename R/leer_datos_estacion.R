#' Leer datos de una estacion meteorologica
#'
#' Descarga (si no existe) y lee los datos de una estacion del SMN.
#'
#' @param id_estacion Codigo de la estacion (por ejemplo "NH0437").
#' @param ruta_archivo Ruta donde se guardara el archivo CSV.
#'
#' @return Un data frame con los datos de la estacion.
#'
#' @examples
#' # Ejemplo simple
#' datos <- leer_datos_estacion("NH0437", "datos/NH0437.csv")
#' head(datos)
#'
#' @export
leer_datos_estacion <- function(id_estacion, ruta_archivo) {

  # catalogo de URLs validas
  catalogo <- list(
    metadatos = "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/metadatos_completos.csv",
    NH0472    = "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0472.csv",
    NH0910    = "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0910.csv",
    NH0046    = "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0046.csv",
    NH0098    = "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0098.csv",
    NH0437    = "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0437.csv"
  )

  # si la ruta no existe, descargarla
  if (!file.exists(ruta_archivo)) {
    utils::download.file(
      url = catalogo[[id_estacion]],
      destfile = ruta_archivo
    )
  }

  # leer CSV
  datos <- utils::read.csv(ruta_archivo, stringsAsFactors = FALSE)
  return(datos)
}


