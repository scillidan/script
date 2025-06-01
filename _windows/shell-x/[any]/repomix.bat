@echo off

if "%~1"=="" (
    echo Please provide a directory path.
    exit /b 1
)

cd /d "%~1" || (
    echo Directory not found: %~1
    exit /b 1
)

set "workdir_name=%~nx1"

setlocal enabledelayedexpansion
set "filename="
for %%A in (%workdir_name%) do (
    set "part=%%A"
    set "part=!part: =-!"
    set "filename=!filename!!part:~0,1!!part:~1!"
)
set "filename=!filename:~0,1!!filename:~1!"

repomix . --output=!filename!.txt

endlocal