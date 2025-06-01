@echo off
setlocal enabledelayedexpansion

REM Define the output file
set "outputFile=playlist.m3u"

REM Check if we've been given multiple parameters
if "%~1"=="" (
    echo No file or directory selected.
    exit /b
)

REM If the output file already exists, delete it
if exist "%outputFile%" del "%outputFile%"

REM Loop through each selected file or directory
:loop
for %%F in (%*) do (
    if exist "%%F" (
        if exist "%%~fF\*" (  REM Check if it's a directory
            echo Processing directory: %%F
            echo #EXTM3U >> "%%~nxF.m3u"
            for /r "%%F" %%G in (*.mp3 *.m4a *.wav *.flac) do (
                echo %%G >> "%%~nxF.m3u"
            )
        ) else (  REM It's a file
            echo Processing file: %%F
            echo #EXTM3U >> "%outputFile%"
            echo %%~fF >> "%outputFile%"
        )
    )
)

echo Done creating playlists.
endlocal