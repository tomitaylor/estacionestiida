# 🌦️ estacionestiida

> Paquete de práctica para la materia **Programación II**  
> 📦 Desarrollado con fines educativos — *no está pensado para uso real*

<!-- badges: start -->
[![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![R-CMD-check](https://github.com/tomitaylor/estacionestiida/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/tomitaylor/estacionestiida/actions/workflows/R-CMD-check.yaml)
[![codecov](https://codecov.io/gh/tomitaylor/estacionestiida/branch/master/graph/badge.svg?token=UL7ODE63B9)](https://codecov.io/gh/tomitaylor/estacionestiida)

<!-- badges: end -->


---

## 🧠 Descripción

**estacionestiida** es un paquete creado para practicar la estructura de paquetes en **R**, la documentación con **roxygen2**, y el uso colaborativo de **Git y GitHub**.  
Permite **leer, resumir y graficar datos meteorológicos** de distintas estaciones del SMN 🇦🇷.

---

## ⚙️ Funciones principales

### 🌍 `leer_datos_estacion()`
Lee o descarga (si no existe) los datos de una estación meteorológica.  
Devuelve un *data frame* con las variables medidas.

```r
df1 <- leer_datos_estacion("NH0910", "data/NH0910.csv")
```
## 📊tabla_resumen_temperatura
Genera un resumen con la temperatura promedio, mínima, máxima, desviación estándar y cantidad de observaciones.

```r
tabla_resumen_temperatura(df1, df2)
```
## 🌡️ grafico_temperatura_mensual()
Grafica la temperatura promedio mensual de una o más estaciones en un gráfico de líneas.
```r
grafico_temperatura_mensual(df1, titulo = "Temp promedio NH0910")
```
## 👥 Autores

Tomás Taylor , 
Alvaro Farias
