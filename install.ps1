# ETC — El Trio Calavera installer for Windows
# Run: powershell -ExecutionPolicy Bypass -File install.ps1

param(
    [string]$Dest = "$env:USERPROFILE\.config\opencode"
)

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path

Write-Host "💀 ETC — Instalando El Trio Calavera..." -ForegroundColor Cyan
Write-Host "   Destino: $Dest" -ForegroundColor Gray
Write-Host ""

New-Item -ItemType Directory -Force -Path "$Dest\skills", "$Dest\agents" | Out-Null

Write-Host "📦 Instalando skills..."
Get-ChildItem "$ScriptDir\.opencode\skills" -Directory | ForEach-Object {
    $name = $_.Name
    Copy-Item -Recurse -Force $_.FullName "$Dest\skills\"
    Write-Host "   ✅ $name"
}

Write-Host ""
Write-Host "🤖 Instalando agents..."
Get-ChildItem "$ScriptDir\.opencode\agents" -Filter *.md | ForEach-Object {
    $name = $_.Name
    Copy-Item -Force $_.FullName "$Dest\agents\"
    Write-Host "   ✅ $name"
}

Write-Host ""
Write-Host "──────────────────────────────────────"
Write-Host "  ✅ ETC instalado correctamente" -ForegroundColor Green
Write-Host "──────────────────────────────────────"
Write-Host "   Skills: $((Get-ChildItem "$Dest\skills" -Directory 2>$null).Count) instaladas"
Write-Host "   Agents: $((Get-ChildItem "$Dest\agents" -Filter *.md 2>$null).Count) instalados"
Write-Host ""
Write-Host "  En tu proyecto, copia opencode.json:" -ForegroundColor Gray
Write-Host "    Copy-Item opencode.json tu-proyecto\" -ForegroundColor Gray
Write-Host ""
Write-Host "  Abre OpenCode y escribe:" -ForegroundColor Cyan
Write-Host "    @el-maestro       — TDD Orchestrator"
Write-Host "    @bug-doctor       — Diagnóstico de bugs"
Write-Host "    @el-de-las-gafas  — Moderador de dominio"
Write-Host ""
