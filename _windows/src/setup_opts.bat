@echo off

echo Regist
echo ===
echo(

echo autohotkey
echo ---
set "AUTOHOTKEY_1_DIR=%SCOOP_APPS_DIR%\autoHotkey1.1\current"
set "AUTOHOTKEY_DIR=%SCOOP_APPS_DIR%\autoHotkey\current"
set "AUTOHOTKEY_DOTFILE=%HOME_DIR%\Git\dotfiles\_windows\autohotkey"
set "AUTOHOTKEY_SRC=%HOME_DIR%\Usr\Source\autohotkey"
set "AUTOHOTKEY_DL=%HOME_DIR%\Usr\Download\autohotkey"
del "%AUTOHOTKEY_SRC%\ahk-keyboard-locker\settings.ini"
del "%AUTOHOTKEY_SRC%\AHK-KeyMap\KeyMap_User.ahk"
del "%AUTOHOTKEY_SRC%\AutoHotKey_MouseGesture\MG_User_User.ahk"
del "%AUTOHOTKEY_SRC%\KBLAutoSwitch\KBLAutoSwitch.ini"
del "%AUTOHOTKEY_SRC%\QuickSwitch\QuickSwitch.ini"
mklink "%AUTOHOTKEY_SRC%\ahk-keyboard-locker\settings.ini" "%AUTOHOTKEY_DOTFILE%\ahk-keyboard-locker\settings.ini"
mklink /H "%AUTOHOTKEY_SRC%\AHK-KeyMap\KeyMap_User.ahk" "%AUTOHOTKEY_DOTFILE%\AHK-KeyMap\KeyMap_User.ahk"
mklink "%AUTOHOTKEY_SRC%\AutoHotKey_MouseGesture\MG_User_User.ahk" "%AUTOHOTKEY_DOTFILE%\AutoHotKey_MouseGesture\MG_User_User.ahk"
copy "%AUTOHOTKEY_DOTFILE%\KBLAutoSwitch\KBLAutoSwitch_en.ini" "%AUTOHOTKEY_SRC%\KBLAutoSwitch\KBLAutoSwitch.ini"
mklink "%AUTOHOTKEY_SRC%\QuickSwitch\QuickSwitch.ini" "%AUTOHOTKEY_DOTFILE%\QuickSwitch\QuickSwitch.ini"
echo(

echo bat
echo ---
set "BAT_DIR=%SCOOP_APPS_DIR%\bat\current"
set "BAT_DOTFILE=%HOME_DIR%\Git\dotfiles\bat"
rmdir /S /Q "%BAT_DIR%\themes"
mklink /J "%BAT_DIR%\themes" "%BAT_DOTFILE%\themes"
echo(

echo broot
echo ---
set "BROOT_DATA=%HOME_DIR%\.config\broot"
set "BROOT_DOTFILE=%HOME_DIR%\Git\dotfiles\broot"
rmdir /S /Q "%BROOT_DATA%\skins"
del "%BROOT_DATA%\conf.hjson"
mklink /J "%BROOT_DATA%\skins" "%BROOT_DOTFILE%\skins"
mklink "%BROOT_DATA%\conf.hjson" "%BROOT_DOTFILE%\conf.hjson"
echo(

echo cmder
echo ---
set "CMDER_DIR=%HOME_DIR%\Usr\Opt\cmder_mini"
set "CMDER_DOTFILE=%HOME_DIR%\Git\dotfiles\_windows\cmder"
set "CMDER_SRC=%HOME_DIR%\Usr\Source\cmder"
rmdir /S /Q "%CMDER_DIR%\bin"
rmdir /S /Q "%CMDER_DIR%\config"
rmdir /S /Q "%CMDER_DIR%\vendor\clink"
rmdir /S /Q "%CMDER_DIR%\vendor\clink-completions"
rmdir /S /Q "%CMDER_DIR%\vendor\conemu-maximus5"
del "%CMDER_DIR%\config\user_profile.ps1"
del "%CMDER_DIR%\vendor\profile.ps1"
del "%CMDER_DIR%\vendor\setpath*.bat"
del "%CMDER_DIR%\vendor\tere.bat"
del "%CMDER_DIR%\vendor\fzf.lua
del "%CMDER_DIR%\vendor\fuzzy_history.lua
del "%CMDER_DIR%\vendor\zoxide.lua
del "%CMDER_DIR%\vendor\git_aliases_autocomplete.lua
del "%CMDER_DIR%\vendor\git_branch_autocomplete.lua
mklink /J "%CMDER_DIR%\bin" "%CMDER_DOTFILE%\bin"
mklink /J "%CMDER_DIR%\vendor\conemu-maximus5" "%SCOOP_APPS_DIR%\conemu\current"
mklink /J "%CMDER_DIR%\vendor\clink" "%SCOOP_APPS_DIR%\clink\current"
mklink /J "%CMDER_DIR%\vendor\clink-completions" "%SCOOP_APPS_DIR%\clink-completions\current"
mkdir "%CMDER_DIR%\config"
mklink "%CMDER_DIR%\config\clink_settings" "%CMDER_DOTFILE%\config\clink_settings"
mklink "%CMDER_DIR%\config\cmder_prompt_config.lua" "%CMDER_DOTFILE%\config\cmder_prompt_config.lua"
copy "%CMDER_DOTFILE%\config\user-ConEmu.xml" "%CMDER_DIR%\config\user-ConEmu.xml"
rem copy "%CMDER_DOTFILE%\config\user-ConEmu.xml" "%CMDER_DIR%\config\user-ConEmu.safemode.xml"
mklink "%CMDER_DIR%\config\starship.lua" "%CMDER_DOTFILE%\config\starship.lua"
mklink "%CMDER_DIR%\config\user_prompt.lua" "%CMDER_DOTFILE%\config\user_prompt.lua"
rem mklink "%CMDER_DIR%\config\user-profile.sh" "%CMDER_DOTFILE%\config\user-profile.sh"
mklink "%CMDER_DIR%\vendor\profile.ps1" "%CMDER_DOTFILE%\vendor\profile.ps1"
mklink "%CMDER_DIR%\config\user_profile.ps1" "%CMDER_DOTFILE%\config\user_profile.ps1"
mklink "%CMDER_DIR%\config\user_profile.cmd" "%CMDER_DOTFILE%\config\user_profile.cmd"
mklink "%CMDER_DIR%\vendor\setpath.bat" "%CMDER_DOTFILE%\vendor\setpath.bat"
mklink "%CMDER_DIR%\vendor\setpath_msys2.bat" "%CMDER_DOTFILE%\vendor\setpath_msys2.bat"
mklink "%CMDER_DIR%\vendor\setpath_cygwin.bat" "%CMDER_DOTFILE%\vendor\setpath_cygwin.bat"
mklink "%CMDER_DIR%\config\user_aliases.cmd" "%CMDER_DOTFILE%\config\user_aliases.cmd"
mklink "%CMDER_DIR%\vendor\tere.bat" "%CMDER_DOTFILE%\vendor\tere.bat"
mklink "%CMDER_DIR%\vendor\fzf.lua" %CMDER_DOTFILE%\vendor\fzf(clink-fzf).lua"
mklink "%CMDER_DIR%\vendor\fuzzy_history.lua" %CMDER_SRC%\clink-gizmos\fuzzy_history.lua"
mklink "%CMDER_DIR%\vendor\zoxide.lua" %CMDER_SRC%\clink-zoxide\zoxide.lua"
rem rem mklink "%CMDER_DIR%\vendor\z.cmd" "%HOME_DIR%\z.lua\current\z.cmd"
rem rem mklink "%CMDER_DIR%\vendor\z.lua" "%HOME_DIR%\z.lua\current\z.lua"
mklink "%CMDER_DIR%\vendor\git_aliases_autocomplete.lua" %CMDER_SRC%\clink-git-extensions\git_aliases_autocomplete.lua"
mklink "%CMDER_DIR%\vendor\git_branch_autocomplete.lua" %CMDER_SRC%\clink-git-extensions\git_branch_autocomplete.lua"
echo(

rem echo cygwin64
rem echo ---
rem set "CYGWIN_DIR=C:\cygwin64"
rem set "CYGWIN_HOME=%CYGWIN_DIR%\home\User"
rem set "CYGWIN_DOTFILE=%HOME_DIR%\Git\dotfiles\_windows\cygwin"
rem del "%CYGWIN_HOME%\.bashrc"
rem del "%CYGWIN_HOME%\.zshrc"
rem copy "%CYGWIN_DOTFILE%\.bashrc" "%CYGWIN_DOTFILE%\.bashrc_backup"
rem copy "%CYGWIN_DOTFILE%\.zshrc" "%CYGWIN_DOTFILE%\.zshrc_backup"
rem mklink "%CYGWIN_HOME%\.bashrc" "%CYGWIN_DOTFILE%\.bashrc"
rem mklink "%CYGWIN_HOME%\.zshrc" "%CYGWIN_DOTFILE%\.zshrc"
rem echo(

echo espanso
echo ---
rem set "ESPANSO_DATA=%APPDATA%\espanso"
set "ESPANSO_DIR=%SCOOP_APPS_DIR%\espanso\current"
set "ESPANSO_DOTFILE=%HOME_DIR%\Git\dotfiles\espanso"
rem rmdir /S /Q "%ESPANSO_DATA%\.espanso\config"
rem rmdir /S /Q "%ESPANSO_DATA%\.espanso\match"
rmdir /S /Q "%ESPANSO_DIR%\.espanso\config"
rmdir /S /Q "%ESPANSO_DIR%\.espanso\match"
mklink /J "%ESPANSO_DIR%\.espanso\config" "%ESPANSO_DOTFILE%\config"
mklink /J "%ESPANSO_DIR%\.espanso\match" "%ESPANSO_DOTFILE%\match"
echo(

echo everything
echo ---
set "EVERYTHING_DIR=%SCOOP_APPS_DIR%\everything\current"
set "EVERYTHING_DOTFILE=%HOME_DIR%\Git\dotfiles\_windows\everything"
del "%EVERYTHING_DIR%\Everything.ini"
copy "%EVERYTHING_DOTFILE%\Everything.ini" "%EVERYTHING_DIR%\Everything.ini"
echo(

echo ditto
echo ---
set "DITTO_PERSIST=%HOME_DIR%\Scoop\persist\ditto"
set "DITTO_DIR=%SCOOP_APPS_DIR%\ditto\current"
set "DITTO_DOTFILE=%HOME_DIR%\Git\dotfiles\_windows\ditto"
del "%DITTO_PERSIST%\Ditto.Settings"
del "%DITTO_DIR%\Ditto.Settings"
copy "%DITTO_DOTFILE%\Ditto.Settings" "%DITTO_DIR%\Ditto.Settings"
echo(

echo dngrep
echo ---
set "DNGREP_DIR=%SCOOP_APPS_DIR%\dngrep\current"
set "DNGREP_DOTFILE=%HOME_DIR%\Git\dotfiles\_windows\dngrep"
del "%DNGREP_DATA%\dnGREP.Settings.dat"
del "%DNGREP_DIR%\dnGREP.Settings.dat"
copy "%DNGREP_DOTFILE%\dnGREP.Settings.dat" "%DNGREP_DOTFILE%\dnGREP.Settings.dat.linkfile"
mklink "%DNGREP_DIR%\dnGREP.Settings.dat" "%DNGREP_DOTFILE%\dnGREP.Settings.dat.linkfile"
:: Add dnGREP.Settings.dat.linkfile into .gitignore
echo(

rem echo fsviewer
rem echo ---
rem set "FSVIEWER_DIR=%SCOOP_APPS_DIR%\fsviewer\current"
rem set "FSVIEWER_DOTFILE=%HOME_DIR%\Git\dotfiles\_windows\fsviewer"
rem del "%FSVIEWER_DIR%\FSSettings.db"
rem mklink "%FSVIEWER_DIR%\FSSettings.db" "%FSVIEWER_DOTFILE%\FSSettings.db"
rem echo(

echo gpodder
echo ---
set "GPODDER_DIR=%SCOOP_APPS_DIR%\gpodder\current"
set "GPODDER_DOTFILE=%HOME_DIR%\Git\dotfiles\gpodder"
del "%GPODDER_DIR%\config\Settings.json"
mklink "%GPODDER_DIR%\config\Settings.json" "%GPODDER_DOTFILE%\config\Settings.json"
echo(

echo irfanview
echo ---
set "IRFANVIEW_DIR=%SCOOP_APPS_DIR%\irfanview\current"
set "IRFANVIEW_DOTFILE=%HOME_DIR%\Git\dotfiles\_windows\irfanview"
del "%IRFANVIEW_DIR%\i_view64.ini"
mklink "%IRFANVIEW_DIR%\i_view64.ini" "%IRFANVIEW_DOTFILE%\i_view64.ini"
echo(

rem echo joplin
rem echo ---
rem set "JOPLIN_DATA=%APPDATA%\Joplin"
rem set "JOPLIN_CONFIG=%HOME_DIR%\.config\joplin-desktop"
rem set "JOPLIN_DIR=%SCOOP_APPS_DIR%\joplin\current"
rem set "JOPLIN_DOTFILE=%HOME_DIR%\Git\dotfiles\joplin"
rem set "JOPLIN_DL=%HOME_DIR%\Usr\Download\joplin"
rem del /q "%JOPLIN_CONFIG%\plugins\*.*
rem del "%JOPLIN_DATA%\Preferences"
rem del "%JOPLIN_CONFIG%\userstyle.css"
rem xcopy /s /e /y "%JOPLIN_DL%\*" "%JOPLIN_CONFIG%\plugins\*"
rem mklink "%JOPLIN_DATA%\Preferences" "%JOPLIN_DOTFILE\Preferences"
rem mklink "%JOPLIN_CONFIG%\userstyle.css" "%JOPLIN_DOTFILE\userstyle.css"
rem echo(

echo jpegview
echo ---
set "JPEGVIEW_DIR=%SCOOP_APPS_DIR%\jpegview-fork\current"
set "JPEGVIEW_DOTFILE=%HOME_DIR%\Git\dotfiles\_windows\jpegview"
del "%JPEGVIEW_DIR%\JPEGView.ini"
mklink "%JPEGVIEW_DIR%\JPEGView.ini" "%JPEGVIEW_DOTFILE%\JPEGView.ini"
echo(

echo keepassxc
echo ---
set "KEEPASSXC_DIR=%SCOOP_APPS_DIR%\keepassxc\current"
set "KEEPASSXC_DOTFILE=%HOME_DIR%\Git\dotfiles\keepassxc"
del "%KEEPASSXC_DIR%\config\keepassxc.ini"
copy "%KEEPASSXC_DOTFILE%\config\keepassxc.ini" "%KEEPASSXC_DOTFILE%\config\keepassxc.ini.linkfile"
mklink "%KEEPASSXC_DIR%\config\keepassxc.ini" "%KEEPASSXC_DOTFILE%\config\keepassxc.ini.linkfile"
:: Add keepassxc.ini.linkfile into .gitignore
echo(

echo keypirinha
echo ---
set "KEYPIRINHA_DIR=%SCOOP_APPS_DIR%\keypirinha\current"
set "KEYPIRINHA_DOTFILE=%HOME_DIR%\Git\dotfiles\_windows\keypirinha"
rmdir /S /Q "%KEYPIRINHA_DIR%\portable\Profile"
mkdir "%KEYPIRINHA_DIR%\portable\Profile"
mklink /J "%KEYPIRINHA_DIR%\portable\Profile\InstalledPackages" "%KEYPIRINHA_DOTFILE%\Profile\InstalledPackages"
mklink /J "%KEYPIRINHA_DIR%\portable\Profile\User" "%KEYPIRINHA_DOTFILE%\Profile\User"
set "FILEBROWSER=%HOME_DIR%\Usr\Data\keypirinha\filebrowser"
rmdir /S /Q %FILEBROWSER%
mkdir %FILEBROWSER%
mklink %FILEBROWSER%\setpath.bat %HOME_DIR%\Git\dotfiles\_windows\cmder\vendor\setpath.bat
mklink %FILEBROWSER%\user_aliases.cmd %HOME_DIR%\Git\dotfiles\_windows\cmder\config\user_aliases.cmd
mklink %FILEBROWSER%\user_profile.cmd %HOME_DIR%\Git\dotfiles\_windows\cmder\config\user_profile.cmd
mklink %FILEBROWSER%\install_scoop.bat %HOME_DIR%\Git\script\_windows\src\install_scoop.bat
mklink %FILEBROWSER%\install_pkgm.bat %HOME_DIR%\Git\script\_windows\src\install_pkgm.bat
mklink %FILEBROWSER%\archwsl.md %HOME_DIR%\Git\notes\os\archwsl.md
mklink %FILEBROWSER%\abbreviation.md %HOME_DIR%\Vault\dictionary\abbreviation.md
echo(

echo lintalist
echo ---
set "LINTALIST_DIR=%SCOOP_APPS_DIR%\lintalist\current"
set "LINTALIST_DOTFILE=%HOME_DIR%\Git\dotfiles\_windows\lintalist"
set "LINTALIST_SRC=%HOME_DIR%\Usr\Source\lintalist"
rmdir /S /Q "%LINTALIST_DIR%\themes\Solarized"
del "%LINTALIST_DIR%\bundles\default.txt"
del "%LINTALIST_DIR%\Settings.ini"
mklink /J "%LINTALIST_DIR%\themes\Solarized" "%LINTALIST_SRC%\lintalist-themes\Solarized"
copy "%LINTALIST_DOTFILE%\bundles\default.txt" "%LINTALIST_DIR%\bundles\default.txt"
copy "%LINTALIST_DOTFILE%\Settings.ini" "%LINTALIST_DIR%\Settings.ini"
echo(

rem echo logseq
rem echo ---
rem set "LOGSEQ_CONFIG=%HOME_DIR%\.logseq"
rem set "LOGSEQ_DOTFILE=%HOME_DIR%\Git\dotfiles\logseq"
rem rmdir /S /Q "%LOGSEQ_CONFIG%"
rem mklink /J "%LOGSEQ_CONFIG%" "%LOGSEQ_DOTFILE%\logseq"
rem echo(

rem echo msys2
rem echo ---
rem set "MSYS2_DIR=C:\msys64"
rem set "MSYS2_HOME=%MSYS2_DIR%\home\User"
rem set "MSYS2_DOTFILE=%HOME_DIR%\Git\dotfiles\_windows\msys2"
rem del "%MSYS2_HOME%\.bashrc"
rem del "%MSYS2_HOME%\.zshrc"
rem copy "%MSYS2_DOTFILE%\.bashrc" "%MSYS2_DOTFILE%\.bashrc_backup"
rem copy "%MSYS2_DOTFILE%\.zshrc" "%MSYS2_DOTFILE%\.zshrc_backup"
rem mklink "%MSYS2_HOME%\.bashrc" "%MSYS2_DOTFILE%\.bashrc"
rem mklink "%MSYS2_HOME%\.zshrc" "%MSYS2_DOTFILE%\.zshrc"
rem echo(

echo mp3tag
echo ---
set "MP3TAG_DIR=%SCOOP_APPS_DIR%\mp3tag\current"
set "MP3TAG_DOTFILE=%HOME_DIR%\Git\dotfiles\_windows\mp3tag"
rmdir /S /Q "%MP3TAG_DIR%\data"
rmdir /S /Q "%MP3TAG_DIR%\export"
del "%MP3TAG_DIR%\mp3tag.cfg"
mklink /J "%MP3TAG_DIR%\data" "%MP3TAG_DOTFILE%\data"
mklink /J "%MP3TAG_DIR%\export" "%MP3TAG_DOTFILE%\export"
mklink "%MP3TAG_DIR%\mp3tag.cfg" "%MP3TAG_DOTFILE%\mp3tag.cfg"
copy "%MP3TAG_DOTFILE%\data\columns.ini" "%MP3TAG_DOTFILE%\data\columns.ini.linkfile"
:: Add columns.ini.linkfile into .gitignore
echo(

echo neovim
echo ---
set "NEOVIM_CONFIG=%LOCALAPPDATA%\nvim"
set "NEOVIM_DATA=%LOCALAPPDATA%\nvim-data"
set "NEOVIM_DOTFILE=%HOME_DIR%\Git\dotfiles\neovim"
set "NEOVIM_SRC=%HOME_DIR%\Usr\Source\neovim"
rmdir /S /Q "%NEOVIM_CONFIG%"
rmdir /S /Q "%NEOVIM_DATA%"
mkdir "%NEOVIM_CONFIG%"
mkdir "%NEOVIM_DATA%"
rem copy "%NEOVIM_SRC%\lazy.nvim" "%NEOVIM_DATA%\lazy"
mklink /J "%NEOVIM_CONFIG%\lua" "%NEOVIM_DOTFILE%\lua"
mklink "%NEOVIM_CONFIG%\init.lua" "%NEOVIM_DOTFILE%\init.lua"
echo(

echo nohboard
echo ---
set "NOHBOARD_DIR=%SCOOP_APPS_DIR%\nohboard\current"
set "NOHBOARD_DOTFILE=%HOME_DIR%\Git\dotfiles\_windows\nohboard"
rmdir /S /Q "%NOHBOARD_DIR%\keyboards\Normal\us_intl_87"
rmdir /S /Q "%NOHBOARD_DIR%\keyboards\Normal\us_intl_82"
mklink /J "%NOHBOARD_DIR%\keyboards\Normal\us_intl_87" "%NOHBOARD_DOTFILE%\us_intl_87"
mklink /J "%NOHBOARD_DIR%\keyboards\Normal\us_intl_82" "%NOHBOARD_DOTFILE%\us_intl_82"
echo(

echo quiterss
echo ---
set "QUITERSS_DIR=%SCOOP_APPS_DIR%\quiterss\current"
set "QUITERSS_DOTFILE=%HOME_DIR%\Git\dotfiles\quiterss"
del "%QUITERSS_DIR%\QuiteRss.ini"
copy "%QUITERSS_DOTFILE%\QuiteRss.ini" "%QUITERSS_DIR%\QuiteRss.ini"
echo(

echo qutebrowser
echo ---
set "QUTEBROWSER_DIR=%APPDATA%\qutebrowser"
set "QUTEBROWSER_DOTFILE=%HOME_DIR%\Git\dotfiles\qutebrowser"
set "QUTEBROWSER_SRC=%HOME_DIR%\Source\qutebrowser"
mkdir "%QUTEBROWSER_DIR%\themes"
rmdir /S /Q "%QUTEBROWSER_DIR%\config"
rmdir /S /Q "%QUTEBROWSER_DIR%\themes\qute-city-lights"
mklink /J "%QUTEBROWSER_DIR%\config" "%QUTEBROWSER_DOTFILE%\config"
mklink /J "%QUTEBROWSER_DIR%\themes\qute-city-lights" "%QUTEBROWSER_SRC%\qute-city-lights"
echo(

echo rime
echo ---
set "RIME_DATA=%APPDATA%\Rime"
set "RIME_DOTFILE=%HOME_DIR%\Git\dotfiles\rime"
set "RIME_SRC=%HOME_DIR%\Usr\Source\rime"
set "RIME_DL=%HOME_DIR%\Usr\Download\rime"
del "%RIME_DATA%\default.custom.yaml"
del "%RIME_DATA%\symbols.yaml"
del "%RIME_DATA%\user.yaml"
del "%RIME_DATA%\weasel.custom.yaml"
del "%RIME_DATA%\default.yaml"
del "%RIME_DATA%\custom_phrase.txt"
del "%RIME_DATA%\melt_eng.dict.yaml"
del "%RIME_DATA%\melt_eng.schema.yaml"
del "%RIME_DATA%\rime.lua"
del "%RIME_DATA%\rime_ice.dict.yaml"
del "%RIME_DATA%\rime_ice.schema.yaml"
del "%RIME_DATA%\symbols_caps_v.yaml"
del "%RIME_DATA%\symbols_v.yaml"
rmdir /S /Q "%RIME_DATA%\cn_dicts"
rmdir /S /Q "%RIME_DATA%\en_dicts"
rmdir /S /Q "%RIME_DATA%\lua"
rmdir /S /Q "%RIME_DATA%\opencc"
rmdir /S /Q "%RIME_DATA%\others"
copy "%RIME_DOTFILE%\data\default.custom.yaml" "%RIME_DATA%\default.custom.yaml"
copy "%RIME_DOTFILE%\data\user.yaml" "%RIME_DATA%\user.yaml"
copy "%RIME_DOTFILE%\data\weasel.custom.yaml" "%RIME_DATA%\weasel.custom.yaml"
mklink "%RIME_DATA%\symbols.yaml" "%RIME_DOTFILE%\data\symbols.yaml"
mklink "%RIME_DATA%\default.yaml" "%RIME_DOTFILE%\data\rime-ice\default.yaml"
mklink /J "%RIME_DATA%\cn_dicts" "%RIME_SRC%\rime-ice\cn_dicts"
mklink /J "%RIME_DATA%\en_dicts" "%RIME_SRC%\rime-ice\en_dicts"
mklink /J "%RIME_DATA%\lua" "%RIME_SRC%\rime-ice\lua"
mklink /J "%RIME_DATA%\opencc" "%RIME_SRC%\rime-ice\opencc"
mklink /J "%RIME_DATA%\others" "%RIME_SRC%\rime-ice\others"
mklink "%RIME_DATA%\custom_phrase.txt" "%RIME_SRC%\rime-ice\custom_phrase.txt"
mklink "%RIME_DATA%\melt_eng.dict.yaml" "%RIME_SRC%\rime-ice\melt_eng.dict.yaml"
mklink "%RIME_DATA%\melt_eng.schema.yaml" "%RIME_SRC%\rime-ice\melt_eng.schema.yaml"
mklink "%RIME_DATA%\rime.lua" "%RIME_SRC%\rime-ice\rime.lua"
mklink "%RIME_DATA%\rime_ice.dict.yaml" "%RIME_SRC%\rime-ice\rime_ice.dict.yaml"
mklink "%RIME_DATA%\rime_ice.schema.yaml" "%RIME_SRC%\rime-ice\rime_ice.schema.yaml"
mklink "%RIME_DATA%\symbols_caps_v.yaml" "%RIME_SRC%\rime-ice\symbols_caps_v.yaml"
mklink "%RIME_DATA%\symbols_v.yaml" "%RIME_SRC%\rime-ice\symbols_v.yaml"
echo(

echo shell-x
echo ---
set "SHELLX_DATA=%APPDATA%\shell-x"
set "SHELLX_DIR=%SCOOP_APPS_DIR%\shell-x\current"
set "SHELLX_DOTFILE=%HOME_DIR%\Git\dotfiles\_windows\shell-x"
del "%SHELLX_DATA%\[any]\*.cmd"
del "%SHELLX_DATA%\[any]\*.bat"
del "%SHELLX_DATA%\[any]\*.ico"
for %%F in ("%SHELLX_DOTFILE%\[any]\*.cmd", "%SHELLX_DOTFILE%\[any]\*.bat" ), do (
    mklink "%SHELLX_DATA%\[any]\%%~nxF" "%%F"
    mklink "%SHELLX_DATA%\[any]\%%~nF.ico" "%HOME_DIR%\File\icon-low-line\ico\darkTheme_cmd.ico"
)
echo(

echo smartzip
echo ---
set "SMARTZIP_DIR=%SCOOP_APPS_DIR%\smartzip\current"
set "SMARTZIP_DOTFILE=%HOME_DIR%\Git\dotfiles\_windows\smartzip"
del "%SMARTZIP_DIR%\SmartZip.ini"
del "%SMARTZIP_DIR%\light.ico"
del "%SMARTZIP_DIR%\dark.ico"
mklink "%SMARTZIP_DIR%\SmartZip.ini" "%SMARTZIP_DOTFILE%\SmartZip.ini"
mklink "%SMARTZIP_DIR%\light.ico" "%SMARTZIP_DOTFILE%\light.ico"
mklink "%SMARTZIP_DIR%\dark.ico" "%SMARTZIP_DOTFILE%\dark.ico"
echo(

echo smf-dsp
echo ---
set "SMFDSP_DIR=%HOME_DIR%\AppData\Local\SMF-DSP"
set "SMFDSP_DOTFILE=%HOME_DIR%\Git\dotfiles\smf-dsp"
rmdir /S /Q "%SMFDSP_DIR%"
mklink /J "%SMFDSP_DIR%" "%SMFDSP_DOTFILE%"
echo(

echo sublime-text
echo ---
set "SUBLIMETEXT_DATA=%HOME_DIR%\AppData\Roaming\Sublime Text"
set "SUBLIMETEXT_DOTFILE=%HOME_DIR%\Git\dotfiles\sublime-text"
del "%SUBLIMETEXT_DATA%\Packages\User\Package Control.sublime-settings"
del "%SUBLIMETEXT_DATA%\Packages\User\AlignTab.sublime-settings"
del "%SUBLIMETEXT_DATA%\Packages\User\Color Highlight.sublime-settings"
del "%SUBLIMETEXT_DATA%\Packages\User\Default (Windows).sublime-keymap"
del "%SUBLIMETEXT_DATA%\Packages\User\Default.sublime-commands"
del "%SUBLIMETEXT_DATA%\Packages\User\Fmt.sublime-settings"
del "%SUBLIMETEXT_DATA%\Packages\User\inc_dec_value.sublime-settings"
del "%SUBLIMETEXT_DATA%\Packages\User\JsPrettier.sublime-settings"
del "%SUBLIMETEXT_DATA%\Packages\User\LaTeXTools.sublime-settings"
del "%SUBLIMETEXT_DATA%\Packages\User\LSP-json.sublime-settings"
del "%SUBLIMETEXT_DATA%\Packages\User\LSP-ltex-ls.sublime-settings"
del "%SUBLIMETEXT_DATA%\Packages\User\LSP.sublime-settings"
del "%SUBLIMETEXT_DATA%\Packages\User\Markdown Extended.sublime-settings"
del "%SUBLIMETEXT_DATA%\Packages\User\Minify.sublime-settings"
del "%SUBLIMETEXT_DATA%\Packages\User\multiAlign.sublime-settings"
del "%SUBLIMETEXT_DATA%\Packages\User\PackageDev.sublime-settings"
del "%SUBLIMETEXT_DATA%\Packages\User\Preferences.sublime-settings"
del "%SUBLIMETEXT_DATA%\Packages\User\Terminal.sublime-settings"
del "%SUBLIMETEXT_DATA%\Packages\User\Text Marker.sublime-settings"
del "%SUBLIMETEXT_DATA%\Packages\User\tokyonight_moon.sublime-color-scheme"
del "%SUBLIMETEXT_DATA%\Packages\User\WakaTime.sublime-settings"
rmdir /S /Q "%SUBLIMETEXT_DATA%\Packages\User\Color Highlighter\themes"
mkdir "%SUBLIMETEXT_DATA%\Packages\User\Color Highlighter"
rmdir /S /Q "%SUBLIMETEXT_DATA%\Packages\User\Snippets"
rmdir /S /Q "%SUBLIMETEXT_DATA%\Packages\User\AlignTab"
rmdir /S /Q "%SUBLIMETEXT_DATA%\Packages\MyCustomFilterPipes"
rmdir /S /Q "%SUBLIMETEXT_DATA%\Packages\OpenUri"
copy "%SUBLIMETEXT_DOTFILE%\Packages_User\Package Control.sublime-settings" "%SUBLIMETEXT_DATA%\Packages\User\Package Control.sublime-settings"
mklink "%SUBLIMETEXT_DATA%\Packages\User\AlignTab.sublime-settings" "%SUBLIMETEXT_DOTFILE%\Packages_User\AlignTab.sublime-settings"
mklink "%SUBLIMETEXT_DATA%\Packages\User\Color Highlight.sublime-settings" "%SUBLIMETEXT_DOTFILE%\Packages_User\Color Highlight.sublime-settings"
mklink "%SUBLIMETEXT_DATA%\Packages\User\Default (Windows).sublime-keymap" "%SUBLIMETEXT_DOTFILE%\Packages_User\Default (Windows).sublime-keymap"
mklink "%SUBLIMETEXT_DATA%\Packages\User\Default.sublime-commands" "%SUBLIMETEXT_DOTFILE%\Packages_User\Default.sublime-commands"
mklink "%SUBLIMETEXT_DATA%\Packages\User\Fmt.sublime-settings" "%SUBLIMETEXT_DOTFILE%\Packages_User\Fmt.sublime-settings"
mklink "%SUBLIMETEXT_DATA%\Packages\User\inc_dec_value.sublime-settings" "%SUBLIMETEXT_DOTFILE%\Packages_User\inc_dec_value.sublime-settings"
mklink "%SUBLIMETEXT_DATA%\Packages\User\JsPrettier.sublime-settings" "%SUBLIMETEXT_DOTFILE%\Packages_User\JsPrettier.sublime-settings"
mklink "%SUBLIMETEXT_DATA%\Packages\User\LaTeXTools.sublime-settings" "%SUBLIMETEXT_DOTFILE%\Packages_User\LaTeXTools.sublime-settings"
mklink "%SUBLIMETEXT_DATA%\Packages\User\LSP-json.sublime-settings" "%SUBLIMETEXT_DOTFILE%\Packages_User\LSP-json.sublime-settings"
mklink "%SUBLIMETEXT_DATA%\Packages\User\LSP-ltex-ls.sublime-settings" "%SUBLIMETEXT_DOTFILE%\Packages_User\LSP-ltex-ls.sublime-settings"
mklink "%SUBLIMETEXT_DATA%\Packages\User\LSP.sublime-settings" "%SUBLIMETEXT_DOTFILE%\Packages_User\LSP.sublime-settings"
mklink "%SUBLIMETEXT_DATA%\Packages\User\Markdown Extended.sublime-settings" "%SUBLIMETEXT_DOTFILE%\Packages_User\Markdown Extended.sublime-settings"
mklink "%SUBLIMETEXT_DATA%\Packages\User\Minify.sublime-settings" "%SUBLIMETEXT_DOTFILE%\Packages_User\Minify.sublime-settings"
mklink "%SUBLIMETEXT_DATA%\Packages\User\multiAlign.sublime-settings" "%SUBLIMETEXT_DOTFILE%\Packages_User\multiAlign.sublime-settings"
mklink "%SUBLIMETEXT_DATA%\Packages\User\PackageDev.sublime-settings" "%SUBLIMETEXT_DOTFILE%\Packages_User\PackageDev.sublime-settings"
mklink "%SUBLIMETEXT_DATA%\Packages\User\Preferences.sublime-settings" "%SUBLIMETEXT_DOTFILE%\Packages_User\Preferences.sublime-settings"
mklink "%SUBLIMETEXT_DATA%\Packages\User\Terminal.sublime-settings" "%SUBLIMETEXT_DOTFILE%\Packages_User\Terminal.sublime-settings"
mklink "%SUBLIMETEXT_DATA%\Packages\User\Text Marker.sublime-settings" "%SUBLIMETEXT_DOTFILE%\Packages_User\Text Marker.sublime-settings"
mklink "%SUBLIMETEXT_DATA%\Packages\User\tokyonight_moon.sublime-color-scheme" "%SUBLIMETEXT_DOTFILE%\Packages_User\tokyonight_moon.sublime-color-scheme"
mklink "%SUBLIMETEXT_DATA%\Packages\User\WakaTime.sublime-settings" "%SUBLIMETEXT_DOTFILE%\Packages_User\WakaTime.sublime-settings"
mklink /J "%SUBLIMETEXT_DATA%\Packages\User\Color Highlighter\themes" "%HOME_DIR%\Usr\Source\neovim\tokyonight.nvim\extras\sublime"
mklink /J "%SUBLIMETEXT_DATA%\Packages\User\Snippets" "%SUBLIMETEXT_DOTFILE%\Snippets"
mklink /J "%SUBLIMETEXT_DATA%\Packages\User\AlignTab" "%SUBLIMETEXT_DOTFILE%\Packages_User\AlignTab"
mklink /J "%SUBLIMETEXT_DATA%\Packages\MyCustomFilterPipes" "%SUBLIMETEXT_DOTFILE%\Packages\MyCustomFilterPipes"
mklink /J "%SUBLIMETEXT_DATA%\Packages\OpenUri" "%SUBLIMETEXT_DOTFILE%\Packages\OpenUri"
echo((

echo snipaste
echo ---
set "SNIPASTE_DIR=%SCOOP_APPS_DIR%\snipaste\current"
set "SNIPASTE_DOTFILE=%HOME_DIR%\Git\dotfiles\snipaste"
del "%SNIPASTE_DIR%\config.ini"
mklink "%SNIPASTE_DIR%\config.ini" "%SNIPASTE_DOTFILE%\config.ini"
echo(

rem echo tabby
rem echo ---
rem rem set "TABBY_DATA=%APPDATA%\tabby"
rem set "TABBY_DIR=%SCOOP_APPS_DIR%\tabby\current"
rem set "TABBY_DOTFILE=%HOME_DIR%\Git\dotfiles\_windows\tabby"
rem del "%TABBY_DATA%\data\config.yaml"
rem del "%TABBY_DIR%\data\config.yaml"
rem mklink "%TABBY_DIR%\data\config.yaml" "%TABBY_DOTFILE%\config.yaml"
rem echo(

echo television
echo ---
set "TELEVISION_DATA=%APPDATA%\television"
set "TELEVISION_DOTFILE=%HOME_DIR%\Git\dotfiles\television"
mkdir "%APPDATA%\television"
del "%TELEVISION_DATA%\config.toml"
mklink "%TELEVISION_DATA%\config.toml" "%TELEVISION_DOTFILE%\config.toml"
echo(

rem echo vim
rem echo ---
rem set "VIM_HOME=%HOME_DIR%\.vim"
rem set "VIM_DIR=%SCOOP_APPS_DIR%\vim\current"
rem set "VIM_DOTFILE=%HOME_DIR%\Git\dotfiles\vim"
rem set "VIM_SRC=%HOME_DIR%\Usr\Source\vim"
rem rmdir /S /Q "%VIM_HOME%\autoload"
rem del "%HOME_DIR%\.vimrc"
rem del "%HOME_DIR%\.gvimrc"
rem mkdir "%VIM_HOME%\autoload"
rem mklink "%VIM_HOME%\autoload\plug.vim" "%VIM_SRC%\vim-plug\plug.vim"
rem mklink "%HOME_DIR%\.vimrc" "%VIM_DOTFILE%\vimrc"
rem mklink "%HOME_DIR%\.gvimrc" "%VIM_DOTFILE%\gvimrc"
rem rem ↪ https://github.com/wolandark/wim#notes
rem rem cd "%VIM_SRC%"\wim"
rem rem call "%WIM_DOTFILE%\symlink.bat"
rem rem cp "%VIM_SRC%\wim\wim-vim" "%WIM_DOTFILE%\wim-vim"
rem echo(

rem echo virtual-display-driver
rem echo ---
rem set "VDD_DATA=C:\VirtualDisplayDriver"
rem set "VDD_DOTFILE=%HOME_DIR%\Git\dotfiles\virtual-display-driver"
rem del "%VDD_DATA%\vdd_settings.xml"
rem mklink "%VDD_DATA%\vdd_settings.xml" "%VDD_DOTFILE%\vdd_settings.xml"
rem echo(

rem echo ueli
rem echo ---
rem set "UELI_DIR=%APPDATA%\ueli"
rem set "UELI_DOTFILE=%HOME_DIR%\Git\dotfiles\ueli"
rem del "%UELI_DIR%\ueli9.settings.json"
rem mklink "%UELI_DIR%\ueli9.settings.json" "%UELI_DOTFILE%\ueli9.settings.json"
rem echo(

echo umi-ocr-paddle
echo ---
set "UMIOCR_PADDLE_DIR=%SCOOP_APPS_DIR%\umi-ocr-paddle\current"
set "UMIOCR_DOTFILE=%HOME_DIR%\Git\dotfiles\umi-ocr-paddle"
del "%UMIOCR_PADDLE_DIR%\UmiOCR-data\.settings"
copy "%UMIOCR_DOTFILE%\.settings" "%UMIOCR_PADDLE_DIR%\UmiOCR-data\.settings"
echo(

echo umi-ocr
echo ---
set "UMIOCR_RAPID_DIR=%SCOOP_APPS_DIR%\umi-ocr\current"
set "UMIOCR_DOTFILE=%HOME_DIR%\Git\dotfiles\umi-ocr-rapid"
del "%UMIOCR_RAPID_DIR%\UmiOCR-data\.settings"
copy "%UMIOCR_DOTFILE%\.settings" "%UMIOCR_RAPID_DIR%\UmiOCR-data\.settings"
echo(

echo wcap
echo ---
set "WCAP_DIR=%SCOOP_APPS_DIR%\wcap\current"
set "WCAP_DOTFILE=%HOME_DIR%\Git\dotfiles\_windows\wcap"
del "%WCAP_DIR%\wcap-x64.ini"
mklink "%WCAP_DIR%\wcap-x64.ini" "%WCAP_DOTFILE%\wcap.ini"
echo(

echo wezterm
echo ---
set "WEZTERM_DATA=%HOME_DIR%/.config/wezterm"
set "WEZTERM_DIR=%SCOOP_APPS_DIR%\wezterm\current"
set "WEZTERM_DOTFILE=%HOME_DIR%\Git\dotfiles\wezterm"
mkdir "%WEZTERM_DATA%"
del "%WEZTERM_DATA%\wezterm.lua"
mklink "%WEZTERM_DATA%\wezterm.lua" "%WEZTERM_DOTFILE%\wezterm.lua"
echo(

echo xnconvert
echo ---
set "XNCONVERT_DIR=%SCOOP_APPS_DIR%\xnconvert\current"
set "XNCONVERT_DOTFILE=%HOME_DIR%\Git\dotfiles\xnconvert"
del "%XNCONVERT_DIR%\xnconvert.ini"
copy "%XNCONVERT_DOTFILE%\xnconvert.ini" "%XNCONVERT_DOTFILE%\xnconvert.ini.linkfile"
mklink "%XNCONVERT_DIR%\xnconvert.ini" "%XNCONVERT_DOTFILE%\xnconvert.ini"
:: Add xnconvert.ini.linkfile into .gitignore
echo(

echo zeal
echo ---
set "ZEAL_DIR=%SCOOP_APPS_DIR%\zeal\current"
set "ZEAL_DOTFILE=%HOME_DIR%\Git\dotfiles\_windows\zeal"
del "%ZEAL_DIR%\zeal.ini"
copy "%ZEAL_DOTFILE%\zeal.ini" "%ZEAL_DIR%\zeal.ini"
echo(

pause