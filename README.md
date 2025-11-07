
<!-- README.md is generated from README.Rmd. Please edit that file -->

# estacionestiida

<!-- badges: start -->

<!-- badges: end -->

The goal of estacionestiida is to …

## Installation

You can install the development version of estacionestiida from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("tomitaylor/estacionestiida")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(estacionestiida)
## basic example code
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.

# estacionestiida 🌦️ <img src="man/figures/logo.png" width="80" align="right" />

> Paquete de práctica para la materia **Programación II**  
> 📦 Desarrollado con fines educativos — *no está pensado para uso real*

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![R-CMD-check](https://github.com/tomitaylor/estacionestiida/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/tomitaylor/estacionestiida/actions/workflows/R-CMD-check.yaml)
[![codecov](https://codecov.io/gh/tomitaylor/estacionestiida/graph/badge.svg?token=UL7ODE63B9)](https://codecov.io/gh/tomitaylor/estacionestiida)

<!-- badges: end -->

------------------------------------------------------------------------

## 🧠 Descripción

**estacionestiida** es un paquete creado para practicar la estructura de
paquetes en **R**, la documentación con **roxygen2**, y el uso
colaborativo de **Git y GitHub**.  
Permite **leer, resumir y graficar datos meteorológicos** de distintas
estaciones del SMN 🇦🇷.

------------------------------------------------------------------------

\##Instalacion Podes instalar la version en desarrolo del paquete en
github:

# install.packages(“pak”)

pak::pak(“tomitaylor/estacionestiida”)

\##Como usar el paquete Primero que nada deberas correr

``` r
library(estacionestiida)
```

## ⚙️ Funciones principales

### 🌍 `leer_datos_estacion()`

Lee o descarga (si no existe) los datos de una estación meteorológica.  
Devuelve un *data frame* con las variables medidas.

``` r
df1 <- leer_datos_estacion("NH0910", "data/NH0910.csv")
```

## 📊tabla_resumen_temperatura

Genera un resumen con la temperatura promedio, mínima, máxima,
desviación estándar y cantidad de observaciones.

``` r
tabla_resumen_temperatura(df1, df2)
```

## 🌡️ grafico_temperatura_mensual()

Grafica la temperatura promedio mensual de una o más estaciones en un
gráfico de líneas.

``` r
grafico_temperatura_mensual(df1, titulo = "Temp promedio NH0910")
```

## Ejemplo de uso 🌦️

A continuación se muestra un ejemplo de cómo usar las funciones
principales del paquete **estacionestiida**.

``` r
library(estacionestiida)

#descargar datos de una estacion

df1 <- leer_datos_estacion("NH0910", "data/NH0910.csv")

#generar tabla resumen

tabla_resumen_temperatura(df1, df2)

# Crear gráfico mensual

grafico_temperatura_mensual(df1, titulo = "Temp promedio NH0910")

```

## Cómo contribuir 🤝

Para contribuir con **estacionestiida** podés leer la guía completa en  
👉 [CONTRIBUTING.md](.github/CONTRIBUTING.md)

También podés: - Reportar errores o sugerencias desde la pestaña
*Issues* de GitHub.  
- Proponer mejoras enviando un *Pull Request*.  
- Leer y seguir el [Código de Conducta](CODE_OF_CONDUCT.md). 📜 Para más
detalles, consultá el [Código de Conducta](CODE_OF_CONDUCT.md).

## 👥 Autores

Tomás Taylor , Alvaro Farias
