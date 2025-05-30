@echo off

set "MPVC_PATH=C:\Users\User\Git\script\mpv\mpvc.bat"
set "files="

:loop
    if "%~1"=="" goto run_command
    set "files=%files% "%~1""
    shift
    goto loop

:run_command
    "%MPVC_PATH%" --merge-files %files%
    echo All files processed.
    pause