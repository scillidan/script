@echo off

setlocal

set "MPV_DOTFILE=%HOME_DIR%\Git\dotfiles\mpv"
set "MPVC_VIDEO=%MPV_DOTFILE%\mpvc_video"
set "MPVC_STREAM=%MPV_DOTFILE%\mpvc_stream"
set "MPVC_EDIT=%MPV_DOTFILE%\mpvc_edit"
set "MPVC_MUSIC=%MPV_DOTFILE%\mpvc_music"
set "MPVC_KARAOK=%MPV_DOTFILE%\mpvc_karaok"
set "MPVC_MANGA=%MPV_DOTFILE%\mpvc_manga"
set "MPVC_TEST=%MPV_DOTFILE%\mpvc_test"

set "config=%1"

if "%config%"=="video" (
    set "CONFIG_DIR=%MPVC_VIDEO%"
    goto :mpvc
) else if "%config%"=="stream" (
    set "CONFIG_DIR=%MPVC_STREAM% --loop-playlist=inf"
    goto :mpvc
) else if "%config%"=="edit" (
    set "CONFIG_DIR=%MPVC_EDIT%"
    goto :mpvc
) else if "%config%"=="music" (
    set "CONFIG_DIR=%MPVC_MUSIC%"
    goto :mpvc
) else if "%config%"=="karaok" (
    set "CONFIG_DIR=%MPVC_KARAOK%"
    goto :mpvc
) else if "%config%"=="manga" (
    set "CONFIG_DIR=%MPVC_MANGA%"
    goto :mpvc
) else if "%config%"=="test" (
    set "CONFIG_DIR=%MPVC_TEST%"
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