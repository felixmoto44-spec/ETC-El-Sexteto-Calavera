---
name: docs-verifier
description: Verificar información técnica contra documentación oficial actual. Detectar información obsoleta, breaking changes, y versiones desactualizadas. Úsala cuando necesites confirmar que una práctica, API o configuración sigue siendo válida.
license: MIT
compatibility: opencode
---

# Docs Verifier

Verifica información técnica contra la documentación oficial.

## Cuándo usarla
- Una solución encontrada tiene > 2 años y no estás seguro de que siga vigente
- Necesitas confirmar la sintaxis o API actual de una función/librería
- Te encuentras con una breaking change notice y necesitas saber cómo migrar
- Quieres verificar que una versión específica sigue teniendo soporte

## Proceso de verificación
1. Buscar en la documentación oficial: docs.site.com, github.com/user/repo/wiki
2. Buscar changelogs: CHANGELOG.md, Releases de GitHub
3. Buscar migration guides: `UPGRADING.md`, `MIGRATION.md`, `docs/migrations/`
4. Buscar deprecation notices: la documentación suele marcar APIs deprecadas
5. Buscar end-of-life dates: endoflife.date, docs oficiales de versionado

## Criterios
- La documentación oficial siempre prevalece sobre cualquier otra fuente
- Changelogs son la fuente de verdad para cambios entre versiones
- Migration guides son obligatorios para major version upgrades
- Deprecation notices suelen tener un timeline: deprecado → eliminado en versión X
- EOL dates: la mayoría de las herramientas tienen un calendario de fin de soporte

## Output esperado
- Estado de la información: vigente / desactualizada / deprecada
- Si está desactualizada: cuál es la versión/docs actual correcta
- Si está deprecada: cuándo se eliminará y cómo migrar
- Fuente oficial de la verificación
