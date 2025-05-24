@echo off

echo Setup SendTo
echo ===
set "SENDTO_DIR=%HOME_DIR%\AppData\Roaming\Microsoft\Windows\SendTo"
set "SOURCE_DIR=%HOME_DIR%\Git\script\_windows\src\SendTo"
del "%SENDTO_DIR%\WinMergeU.exe"
del "%SENDTO_DIR%\video-compare.exe"
del "%SENDTO_DIR%\image2jpg.bat"
del "%SENDTO_DIR%\gridplayer.bat"
rem del "%SENDTO_DIR%\make_m3u.bat"
del "%SENDTO_DIR%\oxipng.bat"
del "%SENDTO_DIR%\pdf2jpg.bat"
del "%SENDTO_DIR%\pngquant.bat"
del "%SENDTO_DIR%\yoga.bat"
mklink "%SENDTO_DIR%\WinMergeU.exe" "%SCOOP_APPS_DIR%\winmerge\current\WinMergeU.exe"
mklink "%SENDTO_DIR%\video-compare.exe" "%SCOOP_APPS_DIR%\video-compare\current\video-compare.exe"
mklink "%SENDTO_DIR%\image2jpg.bat" "%SOURCE_DIR%\image2jpg.bat"
mklink "%SENDTO_DIR%\gridplayer.bat" "%SOURCE_DIR%\gridplayer.bat"
rem mklink "%SENDTO_DIR%\make_m3u.bat" "%SOURCE_DIR%\make_m3u.bat"
mklink "%SENDTO_DIR%\oxipng.bat" "%SOURCE_DIR%\oxipng.bat"
mklink "%SENDTO_DIR%\pdf2jpg.bat" "%SOURCE_DIR%\pdf2jpg.bat"
mklink "%SENDTO_DIR%\pngquant.bat" "%SOURCE_DIR%\pngquant.bat"
mklink "%SENDTO_DIR%\yoga.bat" "%SOURCE_DIR%\yoga.bat"
echo(

pause