@echo off

mprocs ^
	"%HOME_DIR%\Git\dotfiles\_windows\autohotkey\User.ahk" ^
	"%HOME_DIR%\Usr\Source\autohotkey\ahk-keyboard-locker\keyboard-locker.ahk" ^
	"%HOME_DIR%\Usr\Source\autohotkey\AHK-KeyMap\KeyMap_User.ahk" ^
	"%HOME_DIR%\Usr\Source\autohotkey\QuickSwitch\QuickSwitch.ahk" ^
	"%HOME_DIR%\Usr\Source\autohotkey\ShortScript\ShortScript.ahk" ^
	"%HOME_DIR%\Usr\Source\autohotkey\toggle-screen-autohotkey\Toggle^ screen.ahk" ^
	"cd %HOME_DIR%\Usr\Source\autohotkey\vxdesktops.ahk && vxdesktops.ahk" ^
	"cd %HOME_DIR%\Usr\Source\goldendict\GoldenDictOCR && GoldenDictOCR.ahk"