@echo off

setlocal

rem call %~dp0\src\install_scoop.bat

rem call %~dp0\src\install_pkgm.bat

rem call %~dp0\src\get_script.bat

rem call %~dp0\src\get_source.bat

call %~dp0\src\setup_opts.bat

call %~dp0\src\setup_dotfiles.bat

rem call %~dp0\src\setup_register.bat

call %~dp0\src\setup_sendto.bat

gsudo pwsh %~dp0\src\setup_desktop.ps1

:: Run the opts below to set them startup
rem AltBacktick
rem Snipaste
gsudo pwsh %~dp0\src\setup_startup.ps1

:: Run the commands below once

rem bat cache --build
rem broot
rem conda init cmd.exe
rem python -m pip install pipx
rem pipx ensurepath
rem python -m pip install pyenv-win --target %HOME_DIR%\.pyenv
rem rustup default stable
rem shell-x -r
rem shell-x -init
rem tldr -c
rem tldr -u

endlocal

pause