@echo off
setlocal
cd /d "%~dp0"

title OpenCode Gauntlet Installer

echo ==============================================
echo       OpenCode GAUNTLET INSTALLER
echo ==============================================
echo.

if not "%~1"=="" (
    set "TARGET=%~1"
) else (
    set /p "TARGET=Enter the full path to your project: "
)

if "%TARGET%"=="" (
    echo.
    echo No project path supplied.
    pause
    exit /b 1
)

powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0Install-Gauntlet.ps1" -ProjectPath "%TARGET%"

if errorlevel 1 (
    echo.
    echo [ERROR] Installation failed.
) else (
    echo.
    echo [OK] Installation complete.
)

pause
