[CmdletBinding()]
param(
    [string]$ProjectPath = (Get-Location).Path
)

$ErrorActionPreference = 'Stop'
Set-Location -LiteralPath (Resolve-Path -LiteralPath $ProjectPath)

Write-Host 'Open this project in OpenCode Desktop and run /gauntlet.' -ForegroundColor Cyan
Write-Host "Project: $((Get-Location).Path)"
