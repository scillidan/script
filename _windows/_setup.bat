@echo off

setlocal

rem call %~dp0\src\install_scoop.bat

rem call %~dp0\src\install_choco.bat

:: Install by installer
:: Brave
:: chaiNNer
:: clawPDF
:: cmder_mini
:: DarkThumbs
:: Directory Opus
:: DiskGenius
:: Image To PDF Converter
:: Ollama
:: Qt Movie Thumbnailer
:: Steam
:: STL-Thumb
:: Sublime Text
:: SVG Shell Extensions and SVG Text Editor
:: Virtual Display Driver

rem call %~dp0\src\install_pkgm.bat

:: Run the commands below once
:: bat cache --build
:: broot
:: conda init cmd.exe
:: python -m pip install pipx
:: pipx ensurepath
:: python -m pip install pyenv-win --target %HOME_DIR%\.pyenv
:: rustup default stable
:: shell-x -r
:: shell-x -init
:: tldr -c
:: tldr -u

:: Run the exe to set
:: SmartZip.exe

rem call %~dp0\src\get_script.bat

rem call %~dp0\src\get_source.bat

call %~dp0\src\setup_opts.bat

call %~dp0\src\setup_dotfiles.bat

rem call %~dp0\src\setup_register.bat

call %~dp0\src\setup_sendto.bat

gsudo pwsh %~dp0\src\setup_desktop.ps1

gsudo pwsh %~dp0\src\setup_startup.ps1

:: Run the opts below to set them startup
:: AltBacktick
:: Snipaste

endlocal

pause