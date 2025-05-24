@echo off

echo Get Source
echo ===
echo(

echo autohotkey
echo ---
mkdir "%HOME_DIR%/Usr/Source/autohotkey"
cd "%HOME_DIR%/Usr/Source/autohotkey"
git clone --depth=1 https://github.com/flyinclouds/KBLAutoSwitch
git clone --depth=1 https://github.com/Gustice/AHK-KeyMap
git clone --depth=1 https://github.com/sophice/ahk-keyboard-locker
git clone --depth=1 https://github.com/ArturTkaczuk/toggle-screen-autohotkey
git clone --depth=1 https://github.com/RichKMLS/ShortScript
git clone --depth=1 https://github.com/fenchai23/QuickSwitch
echo(

rem echo bat
:: https://github.com/sharkdp/bat#adding-new-syntaxes--language-definitions
rem echo ---
rem mkdir -p %HOME_DIR%/AppData/Roaming/bat/
rem cd %HOME_DIR%/AppData/Roaming/bat
rem mkdir syntaxes
rem cd syntaxes
rem git clone --depth=1 https://github.com/tellnobody1/sublime-purescript-syntax
rem cd ..
rem mkdir themes
rem cd themes
rem bat cache --build
rem echo(

echo cmder
echo ---
mkdir "%HOME_DIR%/Usr/Source/cmder"
cd "%HOME_DIR%/Usr/Source/cmder"
git clone --depth=1 https://github.com/chrisant996/clink-fzf
git clone --depth=1 https://github.com/chrisant996/clink-gizmos
git clone --depth=1 https://github.com/shunsambongi/clink-zoxide
git clone --depth=1 https://github.com/davidmarek/clink-git-extensions
echo(

echo goldendict
echo ---
mkdir "%HOME_DIR%/Usr/Source/goldendict"
cd "%HOME_DIR%/Usr/Source/goldendict"
git clone --depth=1 https://github.com/yozhic/GoldenDict-Full-Dark-Theme
git clone --depth=1 https://github.com/VimWei/GoldenDictOCR
git clone --depth=1 https://gist.github.com/e95773454d79dc047aeed016fb00daef tencenttrans_2zh_zh2en
echo(

echo keypirinha
echo ---
mkdir "%HOME_DIR%/Usr/Source/keypirinha"
cd "%HOME_DIR%/Usr/Source/keypirinha"
rem git clone --depth=1 https://github.com/EhsanKia/Keypirinha-PuzzTools
git clone --depth=1 https://github.com/scillidan/Keypirinha-PuzzTools
echo(

echo lintalist
echo ---
mkdir "%HOME_DIR%/Usr/Source/lintalist"
cd "%HOME_DIR%/Usr/Source/lintalist"
git clone --depth=1 https://github.com/lintalist/lintalist-themes
unzip Solarized.zip -d Solarized
:: Close lintalist before setup it.
echo(

echo neovim
echo ---
mkdir "%HOME_DIR%/Usr/Source/neovim"
cd "%HOME_DIR%/Usr/Source/neovim"
git clone --depth=1 https://github.com/folke/tokyonight.nvim
echo(

echo rime
echo ---
mkdir "%HOME_DIR%/Usr/Source/rime"
cd "%HOME_DIR%/Usr/Source/rime"
git clone --depth=1 https://github.com/iDvel/rime-ice
echo(

rem echo obsidian
rem echo ---
rem mkdir "%HOME_DIR%/Usr/Source/obsidian"
rem cd "%HOME_DIR%/Usr/Source/obsidian"
rem echo(

echo qutebrowser
echo ---
mkdir "%HOME_DIR%/Usr/Source/qutebrowser"
cd "%HOME_DIR%/Usr/Source/qutebrowser"
git clone --depth=1 https://github.com/gicrisf/qute-city-lights
echo(

rem silicon
:: https://github.com/Aloxaf/silicon#adding-new-syntaxes--themes
rem echo ---
rem silicon --build-cache
rem echo(

rem vim
rem echo ---
rem mkdir "%HOME_DIR%/Usr/Source/vim"
rem cd "%HOME_DIR%/Usr/Source/vim"
rem git clone --depth=1 https://github.com/wolandark/wim
rem git clone --depth=1 https://github.com/junegunn/vim-plug
rem echo(

pause