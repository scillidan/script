@echo off

mprocs ^
	"%HOME_DIR%\Scoop\apps\autohotkey1.1\current\AutoHotkeyU64.exe %HOME_DIR%\Git\dotfiles\_windows\autohotkey\User.ahk" ^
	"%HOME_DIR%\Scoop\apps\autohotkey1.1\current\AutoHotkeyU64.exe %HOME_DIR%\Git\dotfiles\_windows\autohotkey\lang_user.ahk" ^
	"%HOME_DIR%\Scoop\apps\autohotkey1.1\current\AutoHotkeyU64.exe %HOME_DIR%\Usr\Source\autohotkey\ahk-keyboard-locker\keyboard-locker.ahk" ^
	"%HOME_DIR%\Scoop\apps\autohotkey1.1\current\AutoHotkeyU64.exe %HOME_DIR%\Usr\Source\autohotkey\AHK-KeyMap\KeyMap_User.ahk" ^
	"%HOME_DIR%\Scoop\apps\autohotkey1.1\current\AutoHotkeyU64.exe %HOME_DIR%\Usr\Source\autohotkey\QuickSwitch\QuickSwitch.ahk" ^
	"%HOME_DIR%\Scoop\apps\autohotkey1.1\current\AutoHotkeyU64.exe %HOME_DIR%\Usr\Source\autohotkey\ShortScript\ShortScript.ahk" ^
	"%HOME_DIR%\Scoop\apps\autohotkey1.1\current\AutoHotkeyU64.exe \"%HOME_DIR%\Usr\Source\autohotkey\toggle-screen-autohotkey\Toggle screen.ahk\"" ^
	"cd %HOME_DIR%\Usr\Source\autohotkey\vxdesktops.ahk && %HOME_DIR%\Scoop\apps\autohotkey1.1\current\AutoHotkeyU64.exe vxdesktops.ahk" ^
	"cd %HOME_DIR%\Usr\Source\goldendict\GoldenDictOCR && %HOME_DIR%\Scoop\apps\autohotkey1.1\current\AutoHotkeyU64.exe GoldenDictOCR.ahk"