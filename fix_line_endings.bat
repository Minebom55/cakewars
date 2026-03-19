@echo off
setlocal enabledelayedexpansion

echo ================================
echo  .mcfunction LF Line Ending Fix
echo ================================
echo.

set "SEARCH_DIR=%~dp0"

echo Searching in: %SEARCH_DIR%
echo.

powershell -NoProfile -ExecutionPolicy Bypass -Command "Get-ChildItem -Path '%SEARCH_DIR%' -Recurse -Filter '*.mcfunction' | ForEach-Object { $path = $_.FullName; $bytes = [System.IO.File]::ReadAllBytes($path); $text = [System.Text.Encoding]::UTF8.GetString($bytes); $fixed = $text -replace \"`r`n\", \"`n\" -replace \"`r\", \"`n\"; $outBytes = [System.Text.Encoding]::UTF8.GetBytes($fixed); [System.IO.File]::WriteAllBytes($path, $outBytes); Write-Host ('Converted: ' + $_.Name) }"

echo.
echo Done!
pause
