#' Leer datos de una estación meteorológica
#'
#' Descarga (si no existe) y lee los datos de una estación del SMN.
#'
#' @param id_estacion Código de la estación (por ejemplo "NH0437").
#' @param ruta_archivo Ruta donde se guardará el archivo CSV.
#'
#' @return Un data frame con los datos de la estación.
#'
#' @examples
#' \dontrun{
#' # Ejemplo simple (no se ejecuta en R CMD check)
#' datos <- leer_datos_estacion("NH0437", "NH0437.csv")
#' head(datos)
#' }
#'
#' @export
leer_datos_estacion <- function(id_estacion, ruta_archivo) {

  # Catálogo de URLs válidas
  catalogo <- list(
    metadatos = "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/metadatos_completos.csv",
    NH0472    = "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0472.csv",
    NH0910    = "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0910.csv",
    NH0046    = "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0046.csv",
    NH0098    = "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0098.csv",
    NH0437    = "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0437.csv"
  )

  # --- 1) CONTROL: el ID debe existir en el catálogo ---
  if (!(id_estacion %in% names(catalogo))) {
    stop("El ID de estación no existe en el catálogo.")
  }

  # --- 2) Si el archivo NO existe, descargarlo ---
  if (!file.exists(ruta_archivo)) {

    url <- catalogo[[id_estacion]]

    if (is.null(url)) {
      stop("No se encontró una URL asociada al ID proporcionado.")
    }

    utils::download.file(
      url      = url,
      destfile = ruta_archivo,
      quiet    = TRUE
    )
  }

  # --- 3) Leer CSV ---
  datos <- utils::read.csv(ruta_archivo, stringsAsFactors = FALSE)

  return(datos)
}



