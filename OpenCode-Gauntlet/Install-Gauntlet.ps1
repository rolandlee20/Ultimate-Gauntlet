[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [string]$ProjectPath
)

$ErrorActionPreference = 'Stop'
$SourceRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$ProjectPath = (Resolve-Path -LiteralPath $ProjectPath).Path
$SourceResolved = (Resolve-Path -LiteralPath $SourceRoot).Path

if ($ProjectPath -eq $SourceResolved) {
    throw 'ProjectPath points to the Gauntlet pack itself. Extract the pack separately, then provide the actual project folder.'
}

Write-Host '=== OpenCode Gauntlet Installer ===' -ForegroundColor Cyan
Write-Host "Pack:    $SourceRoot"
Write-Host "Project: $ProjectPath"
Write-Host ''

$backup = Join-Path $ProjectPath ('.gauntlet-backup-' + (Get-Date -Format 'yyyyMMdd-HHmmss'))
$existing = @('.opencode', '.claude', 'AGENTS.md', 'opencode.jsonc', 'PROMPT.md') | ForEach-Object {
    $p = Join-Path $ProjectPath $_
    if (Test-Path -LiteralPath $p) { $p }
}

if ($existing.Count -gt 0) {
    New-Item -ItemType Directory -Force -Path $backup | Out-Null
    foreach ($item in $existing) {
        Copy-Item -LiteralPath $item -Destination $backup -Recurse -Force
    }
    Write-Host "Backed up existing Gauntlet files -> $backup" -ForegroundColor Yellow
}

$copyItems = @(
    '.opencode',
    '.claude',
    'AGENTS.md',
    'PROMPT.md',
    'BENCHMARK-ROUTING.md',
    'opencode.jsonc'
)

foreach ($item in $copyItems) {
    $src = Join-Path $SourceRoot $item
    if (Test-Path -LiteralPath $src) {
        Copy-Item -LiteralPath $src -Destination (Join-Path $ProjectPath $item) -Recurse -Force
    }
}

Write-Host 'Installed OpenCode Gauntlet files.' -ForegroundColor Green
Write-Host 'Open the target project in OpenCode Desktop and run /gauntlet.' -ForegroundColor Green
