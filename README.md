# estacionestiida 🌦️ <img src="man/figures/logo.png" width="80" align="right" />


> Paquete de práctica para la materia **Programación II**  
> 📦 Desarrollado con fines educativos — *no está pensado para uso real*

<!-- badges: start -->
[![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![R-CMD-check](https://github.com/tomitaylor/estacionestiida/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/tomitaylor/estacionestiida/actions/workflows/R-CMD-check.yaml)
[![codecov](https://codecov.io/gh/tomitaylor/estacionestiida/graph/badge.svg?token=UL7ODE63B9)](https://codecov.io/gh/tomitaylor/estacionestiida)

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

## Cómo contribuir 🤝

Para contribuir con **estacionestiida** podés leer la guía completa en  
👉 [CONTRIBUTING.md](.github/CONTRIBUTING.md)

También podés:
- Reportar errores o sugerencias desde la pestaña *Issues* de GitHub.  
- Proponer mejoras enviando un *Pull Request*.  
- Leer y seguir el [Código de Conducta](CODE_OF_CONDUCT.md).
  📜 Para más detalles, consultá el [Código de Conducta](CODE_OF_CONDUCT.md).

## 👥 Autores

Tomás Taylor , 
Alvaro Farias
