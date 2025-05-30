@echo off

setlocal

set "MPV_DOTFILE=%HOME_DIR%\Git\dotfiles\mpv"
set "MPVC_VIDEO=%MPV_DOTFILE%\mpvc_video"
set "MPVC_MUSIC=%MPV_DOTFILE%\mpvc_music"
set "MPVC_MANGA=%MPV_DOTFILE%\mpvc_manga"

set "config=%1"

if "%config%"=="video" (
    set "CONFIG_DIR=%MPVC_VIDEO%"
    goto :mpvc
) else if "%config%"=="music" (
    set "CONFIG_DIR=%MPVC_MUSIC%"
    goto :mpvc
) else if "%config%"=="manga" (
    set "CONFIG_DIR=%MPVC_MANGA%"
    goto :mpvc
) else (
    echo Invalid config
    goto :end
)

:mpvc
mpv.exe --config-dir="%CONFIG_DIR%" --idle --force-window --keep-open=yes %2
goto :end

:end
endlocal