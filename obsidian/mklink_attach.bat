@echo off

set "VAULT_CHEATSHEET=%HOME_DIR%\Vault\cheatsheet"
set "VAULT_DICTIONARY=%HOME_DIR%\Vault\dictionary"
set "VAULT_LIVE=%HOME_DIR%\Vault\live"
set "VAULT_LOG=%HOME_DIR%\Vault\log"
set "VAULT_MARKET=%HOME_DIR%\Vault\market"
set "VAULT_MARKET=%HOME_DIR%\Vault\market"
set "LATEX_DL=%HOME_DIR%\Usr\Download\latex"

echo vault_latex
echo ---
rmdir /S /Q "%VAULT_CHEATSHEET%\attach\latex\package-pdf"
mklink /J "%VAULT_CHEATSHEET%\attach\latex\package-pdf" "%HOME_DIR%\Usr\Data\latex\package-pdf"
mklink "%VAULT_CHEATSHEET%\attach\latex\LongTeX1.pdf" "%HOME_DIR%\Usr\Data\latex\LongTeX1.pdf"
mklink "%VAULT_CHEATSHEET%\attach\latex\latexsheet-a4.pdf" "%HOME_DIR%\Usr\Data\latex\latexsheet-a4.pdf"
del "%VAULT_CHEATSHEET%\attach\latex\package-pdf-jpg\*.jpg"
for %%F in ("%HOME_DIR%\File\image_latex\*.jpg" ), do (
    mklink "%VAULT_CHEATSHEET%\attach\latex\package-pdf-jpg\%%~nF.jpg" "%%F"
)
echo(

echo vault_live
echo ---
for %%F in ("%HOME_DIR%\Usr\Data\obsidian\txt\*.txt" ), do (
    copy "%%F" "%VAULT_LIVE%\txt\%%~nF.md"
)
echo(

pause