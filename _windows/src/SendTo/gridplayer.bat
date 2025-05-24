@echo off
REM Define the path to GridPlayer.exe
set "GRID_PLAYER_PATH=C:\Users\User\Scoop\apps\gridplayer\0.5.3\GridPlayer.exe"

REM Initialize an empty variable to store file paths
set "files="

REM Loop through all selected files
:loop
if "%~1"=="" goto run_command
REM Append the current file to the files variable
set "files=%files% "%~1""
shift
goto loop

:run_command
REM Execute GridPlayer.exe with all collected file paths
"%GRID_PLAYER_PATH%" %files%
echo All files processed.
pause