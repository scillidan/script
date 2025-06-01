:: Purpose: Create a zip archive with a specified name or default to 'archive'.
:: Tools: 7z
:: Usage: file.bat <file_to_archive>

@echo off
setlocal enabledelayedexpansion

set /p "arcName=Enter the archive name (default is archive): "

if "!arcName!"=="" (
    set "arcName=archive"
)

7z a -v10m "!arcName!.zip" %*

endlocal