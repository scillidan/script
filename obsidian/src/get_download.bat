@echo off

echo latex
echo ---
set "LATEX_DL=%HOME_DIR%\Usr\Download\latex"
cd "%LATEX_DL%"
wget https://mirrors.ctan.org/macros/latex/required/tools.zip
wget https://mirrors.ctan.org/fonts/fbb.zip
echo(


pause