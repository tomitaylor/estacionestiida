#' Leer datos de una estación meteorológica
#'
#' Descarga (si no existe) y lee los datos de una estación del SMN.
#'
#' @param id_estacion Código de la estación (por ejemplo "NH0437")
#' @param ruta_archivo Ruta donde se guardará el archivo CSV
#'
#' @return Un data frame con los datos de la estación
#' @export


leer_datos_estacion <- function(id_estacion, ruta_archivo) {
  # catálogo de URLs válidas
  catalogo <- list(
    metadatos = "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/metadatos_completos.csv",
    NH0472    = "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0472.csv",
    NH0910    = "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0910.csv",
    NH0046    = "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0046.csv",
    NH0098    = "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0098.csv",
    NH0437    = "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0437.csv"
  )

  # validación ID
  if (!id_estacion %in% names(catalogo)) {
    cli::cli_abort("ID de estación desconocido: {id_estacion}. Usá uno de: {paste(names(catalogo), collapse = ', ')}")
  }

  url_src <- catalogo[[id_estacion]]

  # si ya está, leo y chau (early return)
  if (file.exists(ruta_archivo)) {
    cli::cli_inform("Encontré archivo local → leyendo {ruta_archivo}…")
    return(readr::read_csv(ruta_archivo, show_col_types = FALSE))
  }

  # crear carpeta y descargar
  dir.create(dirname(ruta_archivo), showWarnings = FALSE, recursive = TRUE)
  cli::cli_inform("No estaba el archivo → descargando a {ruta_archivo}…")
  utils::download.file(url_src, destfile = ruta_archivo, quiet = TRUE)

  datos <- readr::read_csv(ruta_archivo, show_col_types = FALSE)
  cli::cli_inform("Lectura OK para {id_estacion}.")
  datos
}
