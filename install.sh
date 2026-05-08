#!/usr/bin/env bash
set -euo pipefail

DEST="${1:-$HOME/.config/opencode}"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "💀 ETC — Instalando El Trío Calavera..."
echo "   Destino: $DEST"
echo ""

mkdir -p "$DEST/skills" "$DEST/agents"

echo "📦 Instalando skills..."
for skill_dir in "$SCRIPT_DIR/.opencode/skills/"*/; do
    skill_name=$(basename "$skill_dir")
    cp -r "$skill_dir" "$DEST/skills/"
    echo "   ✅ $skill_name"
done

echo ""
echo "🤖 Instalando agents..."
for agent_file in "$SCRIPT_DIR/.opencode/agents/"*.md; do
    agent_name=$(basename "$agent_file")
    cp "$agent_file" "$DEST/agents/"
    echo "   ✅ $agent_name"
done

echo ""
echo "──────────────────────────────────────"
echo "  ✅ ETC instalado correctamente"
echo "──────────────────────────────────────"
echo "   Skills: $(ls -1 "$DEST/skills" 2>/dev/null | wc -l) instaladas"
echo "   Agents: $(ls -1 "$DEST/agents" 2>/dev/null | wc -l) instalados"
echo ""
echo "  En tu proyecto, copia opencode.json:"
echo "    cp $(dirname "$SCRIPT_DIR")/opencode.json tu-proyecto/"
echo ""
echo "  Abre OpenCode y escribe:"
echo "    @el-maestro       — TDD Orchestrator"
echo "    @bug-doctor       — Diagnóstico de bugs"
echo "    @el-de-las-gafas  — Moderador de dominio"
echo ""
