@echo off
setlocal

set package=LinkShellExtension ^
mkv-muxing-batch-gui ^
open-shell ^
openhashtab

for %%p in (%package%) do (
    gsudo choco install -y %%p
)

endlocal
pause