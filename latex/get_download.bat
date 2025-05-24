@echo off

set "LATEX_DL=%HOME_DIR%\Usr\Download\latex"
cd "%LATEX_DL%"

wget https://wch.github.io/latexsheet/latexsheet-a4.pdf
wget https://www.bu.edu/math/files/2013/08/LongTeX1.pdf

:: package on ctan.org
wget https://mirrors.ctan.org/macros/latex/required/tools.zip
wget https://mirrors.ctan.org/fonts/fbb.zip

pause