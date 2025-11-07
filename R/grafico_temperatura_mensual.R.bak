#' Gráfico de temperatura mensual
#'
#' Muestra la temperatura promedio mensual de una o más estaciones.
#'
#' @param df Data frame con las columnas id, fecha y temperatura_abrigo_150cm.
#' @param colores Vector opcional de colores.
#' @param titulo Título del gráfico.
#' @return Un gráfico de ggplot2.
#' @export


grafico_temperatura_mensual <- function(df, colores = NULL, titulo = "Temperatura promedio") {

  # promedio mensual
  df_mes <- df |>
    dplyr::mutate(mes = lubridate::month(fecha, label = TRUE, abbr = TRUE)) |>
    dplyr::group_by(id, mes) |>
    dplyr::summarise(prom = mean(temperatura_abrigo_150cm, na.rm = TRUE), .groups = "drop")

  estaciones <- sort(unique(df_mes$id))
  n <- length(estaciones)

  # colores
  if (is.null(colores)) {
    colores <- grDevices::hcl.colors(n, "Spectral")
  }
  pal <- stats::setNames(colores, estaciones)

  # gráfico
  ggplot2::ggplot(df_mes, ggplot2::aes(x = mes, y = prom, color = id, group = id)) +
    ggplot2::geom_line(linewidth = 1) +
    ggplot2::geom_point(size = 1.8) +
    ggplot2::scale_color_manual(values = pal, name = "Estación") +
    ggplot2::labs(title = titulo, x = "Mes", y = "Temp. promedio (°C)") +
    ggplot2::theme_minimal(base_size = 12) +
    ggplot2::theme(legend.position = "bottom",
                   plot.title = ggplot2::element_text(face = "bold"))
}
