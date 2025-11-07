#' Leer datos de una estacion meteorologica
#'
#' Descarga (si no existe) y lee los datos de una estacion del SMN.
#'
#' @param id_estacion Codigo de la estacion (por ejemplo "NH0437")
#' @param ruta_archivo Ruta donde se guardara el archivo CSV
#'
#' @return Un data frame con los datos de la estacion
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

  # validacion ID
  if (!id_estacion %in% names(catalogo)) {
    cli::cli_abort("ID de estacion desconocido: {id_estacion}. Usa uno de: {paste(names(catalogo), collapse = ', ')}")
  }

  url_src <- catalogo[[id_estacion]]

  # si ya esta, leo
  if (file.exists(ruta_archivo)) {
    cli::cli_inform("Encontre archivo local -> leyendo {ruta_archivo}...")
    return(readr::read_csv(ruta_archivo, show_col_types = FALSE))
  }
  leer_datos_estacion <- function(estacion, ruta_archivo = NULL, ...) {
    # si no te pasan ruta, usa tempdir() y un nombre por defecto
    if (is.null(ruta_archivo) || !nzchar(ruta_archivo)) {
      ruta_archivo <- file.path(tempdir(), paste0(estacion, ".csv"))
    }
    dir.create(dirname(ruta_archivo), showWarnings = FALSE, recursive = TRUE)


  }

  # crear carpeta y descargar
  dir.create(dirname(ruta_archivo), showWarnings = FALSE, recursive = TRUE)
  cli::cli_inform("No estaba el archivo -> descargando a {ruta_archivo}...")
  utils::download.file(url_src, destfile = ruta_archivo, quiet = TRUE)

  datos <- readr::read_csv(ruta_archivo, show_col_types = FALSE)
  cli::cli_inform("Lectura OK para {id_estacion}.")
  datos
}
