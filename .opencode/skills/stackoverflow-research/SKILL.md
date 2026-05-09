---
name: stackoverflow-research
description: Buscar en Stack Overflow mensajes de error exactos, patrones de implementación y mejores prácticas. Úsala para problemas comunes con soluciones validadas por la comunidad.
license: MIT
compatibility: opencode
---

# Stack Overflow Research

Busca soluciones validadas por la comunidad en Stack Overflow.

## Cuándo usarla
- Mensaje de error exacto que buscas entender
- Patrón de implementación con dudas sobre la mejor práctica
- Comparación entre enfoques técnicos
- Problema conocido con múltiples soluciones

## Cómo buscar
1. Busca el mensaje de error exacto entrecomillado
2. Filtra por etiquetas: `[python]`, `[reactjs]`, `[postgresql]`, etc.
3. Prioriza respuestas con > 50 upvotes y aceptadas por el autor
4. Si la respuesta tiene > 3 años, busca versiones más recientes
5. Lee comentarios de la respuesta aceptada — a veces contienen correcciones importantes

## Criterios de relevancia
- Respuesta aceptada + upvotes > 100 = muy fiable
- Respuesta aceptada + upvotes < 20 = puede ser correcta pero poco validada
- Múltiples respuestas con votos similares = varias aproximaciones válidas
- Comentarios "this worked for me" = validación adicional
- Fecha de la respuesta: si > 3 años para tecnología web, verificar vigencia

## Output esperado
- Respuesta más relevante con resumen
- Enfoques alternativos si los hay
- Advertencias si la información puede estar desactualizada
