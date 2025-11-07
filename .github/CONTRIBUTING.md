# Guía para contribuir al paquete **estacionestiida**

¡Gracias por tu interés en contribuir! 🙌  
Este documento explica cómo podés colaborar en el desarrollo y mejora del paquete **estacionestiida**.

---

## 💡 Cómo podés ayudar

Podés contribuir de varias maneras:

1. **Reportando errores (bugs)**  
   Si encontrás un problema, abrí un *Issue* en el repositorio de GitHub con una descripción clara, los pasos para reproducirlo y el resultado esperado.  
   👉 [https://github.com/tomitaylor/estacionestiida/issues](https://github.com/tomitaylor/estacionestiida/issues)

2. **Proponiendo mejoras o nuevas funciones**  
   Si tenés una idea para mejorar el paquete o sumar nuevas funcionalidades:
   - Hacé un *fork* del repositorio.  
   - Creá una nueva rama con un nombre descriptivo, por ejemplo:  
     `mejora-graficos` o `agrega-nueva-funcion`.  
   - Implementá tus cambios y verificá que pasen los *checks*:  
     ```r
     devtools::check()
     ```
   - Abrí un *Pull Request* explicando tus cambios y el motivo.

3. **Sugerencias sobre la documentación**  
   Podés corregir errores tipográficos, mejorar ejemplos o ampliar explicaciones.  
   Cada contribución ayuda a que el paquete sea más claro para la comunidad.

---

## 🧩 Requisitos para los aportes

- El código debe seguir las buenas prácticas del tidyverse (claridad, legibilidad, uso de `%>%` o `|>`).
- Los nombres de las funciones y variables deben estar en minúsculas y con guiones bajos (`snake_case`).
- Todos los cambios deben incluir:
  - Comentarios claros en el código.
  - Ejemplos en la documentación.
  - Tests que verifiquen el correcto funcionamiento.

---

## 📜 Código de Conducta

Todas las interacciones en el proyecto deben respetar el  
[Código de Conducta](../CODE_OF_CONDUCT.md).  
Cualquier comportamiento inapropiado puede ser reportado al autor del paquete.

---

## 📧 Contacto

Si tenés dudas o querés hablar directamente sobre una contribución,  
podés escribir a **tomastaylor01@gmail.com** o a **alvarofariasnb09@gmail.com**

---

¡Gracias por hacer que **estacionestiida** sea mejor! 💪
