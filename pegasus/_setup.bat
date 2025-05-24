@echo off

set "PEGASUS_DIR=%SCOOP_APPS_DIR%\pegasus\current"
set "RETROARCH_DIR=%SCOOP_APPS_DIR%\retroarch\current"
set "PEGASUS_DOTFILE=%HOME_DIR%\Git\file\pegasus-frontend"
set "PEGASUS_SRC=%HOME_DIR%\Usr\Source\pegasus"
set "PEGASUS_DL=%HOME_DIR%\Usr\Download\pegasus"

rmdir /S /Q "%PEGASUS_DIR%\RetroArch"
mklink /J "%PEGASUS_DIR%\RetroArch" "%RETROARCH_DIR%"
rmdir /S /Q "%PEGASUS_DIR%\RetroArch\cheats"
rmdir /S /Q "%PEGASUS_DIR%\RetroArch\config"
rmdir /S /Q "%PEGASUS_DIR%\RetroArch\cores"
rmdir /S /Q "%PEGASUS_DIR%\RetroArch\downloads"
rmdir /S /Q "%PEGASUS_DIR%\RetroArch\system"
mklink /J "%PEGASUS_DIR%\RetroArch\cheats" "%PEGASUS_DL%\pegasus-g\RetroArch\cheats"
mklink /J "%PEGASUS_DIR%\RetroArch\config" "%PEGASUS_DL%\pegasus-g\RetroArch\config"
mklink /J "%PEGASUS_DIR%\RetroArch\cores" "%PEGASUS_DL%\pegasus-g\RetroArch\cores"
mklink /J "%PEGASUS_DIR%\RetroArch\downloads" "%PEGASUS_DL%\pegasus-g\RetroArch\downloads"
mklink /J "%PEGASUS_DIR%\RetroArch\system" "%PEGASUS_DL%\pegasus-g\RetroArch\system"

rmdir /S /Q "%PEGASUS_DIR%\config"
mkdir "%PEGASUS_DIR%\config"
mklink "%PEGASUS_DIR%\config\game_dirs.txt" "%PEGASUS_DOTFILE%\config\game_dirs.txt"
mklink "%PEGASUS_DIR%\config\settings.txt" "%PEGASUS_DOTFILE%\config\settings.txt"

mkdir "%PEGASUS_DIR%\config\themes"
for /d %%i in (%PEGASUS_SRC%\*) do mklink /J "%PEGASUS_DIR%\config\themes\%%~nxi" "%%i"
rmdir /S /Q "%PEGASUS_DIR%\Roms"
mklink /D "%PEGASUS_DIR%\Roms" "%PEGASUS_DL%\pegasus-g\Roms"
for /r "%PEGASUS_DIR%\Roms" %%f in (metadata.pegasus.txt) do (
    del "%%f"
)
for /d %%d in ("%PEGASUS_DIR%\Roms\*") do (
    if exist "%PEGASUS_DOTFILE%\metadata\%%~nxd\metadata.pegasus.txt" (
        mklink "%%d\metadata.pegasus.txt" "%PEGASUS_DOTFILE%\metadata\%%~nxd\metadata.pegasus.txt"
    )
)
rem mkdir "%RETROARCH_DIR%\Emulators"
echo(

pause