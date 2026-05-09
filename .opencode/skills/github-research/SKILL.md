---
name: github-research
description: Buscar en GitHub issues, PRs y discusiones técnicas. Filtrar por estado, etiquetas, repo, y fecha. Úsala cuando necesites investigar bugs conocidos, workarounds, o discusiones de desarrollo en repositorios de GitHub.
license: MIT
compatibility: opencode
---

# GitHub Research

Busca y analiza información en GitHub para resolver problemas técnicos.

## Cuándo usarla
- Un error tiene un stack trace que apunta a una dependencia específica
- Necesitas saber si un bug ya fue reportado y solucionado
- Quieres entender discusiones de diseño en un repositorio
- Buscas workarounds documentados en issues cerrados

## Cómo buscar en GitHub Issues

1. Repo exacto: `user/repo` + palabras clave del error
2. Filtrar: `is:issue is:closed` + palabras clave del mensaje de error
3. Buscar en PRs mergeados: `is:pr is:merged` + descripción del fix
4. Leer comentarios: los workarounds suelen estar en los últimos comentarios antes del cierre

## Criterios de relevancia
- Issues cerrados con label `bug` o `solution` son los más fiables
- PRs mergeados con tests son evidencia de fix confirmado
- Issues abiertos sin actividad > 6 meses = probablemente abandonados
- Comentarios del mantenedor tienen más peso que comentarios de usuarios

## Output esperado
- Resumen del issue/PR: título, estado, fecha, labels
- Solución propuesta o workaround
- Confianza: alta (fix mergeado), media (workaround sin merge), baja (discusión abierta)
