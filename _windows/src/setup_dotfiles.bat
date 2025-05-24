@echo off

echo Install dotfiles
echo ===
echo(

echo pip
echo ---
mkdir "%APPDATA%\pip"
del "%APPDATA%\pip\pip.ini"
mklink "%APPDATA%\pip\pip.ini" "%HOME_DIR%\Git\dotfiles\pip\pip.ini"
echo(

echo nvm
echo ---
mkdir "%HOME_DIR%\.nvm"
del "%HOME_DIR%\.nvm\settings.txt"
mklink "%HOME_DIR%\.nvm\settings.txt" "%HOME_DIR%\Git\dotfiles\nvm\settings.txt"
echo(

echo cargo
echo ---
mkdir "%HOME_DIR%\.cargo"
del "%HOME_DIR%\.cargo\config.toml"
mklink "%HOME_DIR%\.cargo\config.toml" "%HOME_DIR%\Git\dotfiles\cargo\config.toml"
echo(

echo npmrc
echo ---
del "%HOME_DIR%\.npmrc"
mklink "%HOME_DIR%\.npmrc" "%HOME_DIR%\Git\dotfiles\npmrc"
echo(

echo yarnrc
echo ---
del "%HOME_DIR%\.yarnrc"
copy "%HOME_DIR%\Git\dotfiles\yarnrc" "%HOME_DIR%\Git\dotfiles\yarnrc.linkfile"
mklink "%HOME_DIR%\.yarnrc" "%HOME_DIR%\Git\dotfiles\yarnrc"
:: Add yarnrc.linkfile into .gitignore
echo(

echo wsl
echo ---
del "%HOME_DIR%\.wslconfig"
mklink "%HOME_DIR%\.wslconfig" "%HOME_DIR%\Git\dotfiles\wslconfig"
echo(

pause