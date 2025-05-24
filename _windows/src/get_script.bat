@echo off

echo Get Script
echo ===
mkdir %HOME_DIR%\Usr\Script
cd %HOME_DIR%\Usr\Script
git clone --depth=1 https://github.com/simonthum/git-sync
git clone --depth=1 https://github.com/fboender/multi-git-status
git clone --depth=1 https://github.com/badrelmers/RefrEnv
echo(

pause