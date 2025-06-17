@echo off

setlocal

set "MPV_DL=%HOME_DIR%\Usr\Download\mpv"
mkdir %MPV_DL%
pushd %MPV_DL%

echo uosc
echo ---
if exist "uosc.zip" (
    echo "uosc.zip already exists. Skipping download."
) else (
    curl -L -o uosc.zip https://github.com/tomasklaen/uosc/releases/latest/download/uosc.zip
)

if not exist "uosc" (
    echo "Decompress uosc.zip to uosc."
    unzip uosc.zip -d uosc
)

for %%f in ("%MPV_DL%\uosc\fonts\*.ttf") do (
    copy "%%f" "%windir%\Fonts\"
)
echo(

echo mpv-handler
echo ---
if exist "mpv-handler.zip" (
    echo "mpv-handler.zip already exists. Skipping download."
) else (
    curl -L -o mpv-handler.zip https://github.com/akiirui/mpv-handler/releases/latest/download/mpv-handler-windows-amd64.zip
)

if not exist "mpv-handler" (
    echo "Decompress mpv-handler.zip to mpv-handler."
    unzip mpv-handler.zip -d mpv-handler
)

gsudo "%MPV_DL%\mpv-handler\handler-install.bat"
echo(

echo hdr-toys
echo ---
if exist "HDR-Toys.zip" (
    echo HDR-Toys.zip already exists. Skipping download.
) else (
    curl -L -o HDR-Toys.zip https://github.com/natural-harmonia-gropius/hdr-toys/releases/download/v2401/HDR-Toys.v2401.zip
)

if not exist "hdr-toys" (
    for %%f in (HDR-Toys*.zip) do (
        echo Decompressing %%f to hdr-toys.
        unzip "%%f"
        move "HDR-Toys v2401" hdr-toys
    )
)
echo(

rem echo mpv-hold-accelerate
rem echo ---
rem if exist "hold_accelerate.js" (
rem     echo "hold_accelerate.js already exists. Skipping download."
rem ) else (
rem     curl -L -o hold_accelerate.js https://github.com/gaesa/mpv-hold-accelerate/releases/download/2024.09.02/hold_accelerate.js
rem )
rem echo(

echo mpv_thumbnail_script
echo ---
if exist "mpv_thumbnail_script_server.lua" (
    echo "mpv_thumbnail_script_server.lua already exists. Skipping download."
) else (
    curl -L -o mpv_thumbnail_script_server.lua https://github.com/TheAMM/mpv_thumbnail_script/releases/download/0.4.2/mpv_thumbnail_script_server.lua
)

if exist "mpv_thumbnail_script_client_osc.lua" (
    echo "mpv_thumbnail_script_client_osc.lua already exists. Skipping download."
) else (
    curl -L -o mpv_thumbnail_script_client_osc.lua https://github.com/TheAMM/mpv_thumbnail_script/releases/download/0.4.2/mpv_thumbnail_script_client_osc.lua
)
echo(

echo auto-save-state.lua
echo ---
if exist "auto-save-state.lua" (
    echo "auto-save-state.lua already exists. Skipping download."
) else (
    curl -L -o auto-save-state.lua https://raw.githubusercontent.com/AN3223/dotfiles/refs/heads/master/.config/mpv/scripts/auto-save-state.lua
)
echo(

popd

endlocal

pause