$desktopDir = [System.IO.Path]::Combine($env:HOME_DIR, 'Desktop')

$optPaths = @(
    "C:\Users\User\Usr\Opt\cmder_mini\Cmder.exe",
    "C:\Users\User\Usr\Source\autohotkey\KBLAutoSwitch\KBLAutoSwitch.exe"
)

foreach ($exePath in $optPaths) {
    if (Test-Path $exePath) {
        $exeName = [System.IO.Path]::GetFileNameWithoutExtension($exePath)
        $shortcutPath = Join-Path -Path $desktopDir -ChildPath "$exeName.lnk"

        $shell = New-Object -ComObject WScript.Shell
        $shortcut = $shell.CreateShortcut($shortcutPath)
        $shortcut.TargetPath = $exePath
        $shortcut.Save()
    } else {
        Write-Host "Executable not found: $exePath"
    }
}

$alacrittyPath = "C:\Users\User\Scoop\apps\alacritty\current\alacritty.exe"
$alacrittyConfig = "C:\Users\User\Git\dotfiles\alacritty"

$alacrittyShortcuts = @(
    @{ Name = "alacritty_cmder"; ConfigFile = "alacritty_cmder.toml"; WorkingDir = "C:\Users\User" },
    @{ Name = "alacritty_cmder_command"; ConfigFile = "alacritty_cmder.toml"; WorkingDir = "C:\Users\User"; AdditionalArgs = '--command' }
)

foreach ($shortcutInfo in $alacrittyShortcuts) {
    if (Test-Path $alacrittyPath) {
        $shortcutName = $shortcutInfo.Name
        $shortcutPath = Join-Path -Path $desktopDir -ChildPath "$shortcutName.lnk"

        $shell = New-Object -ComObject WScript.Shell
        $shortcut = $shell.CreateShortcut($shortcutPath)
        $shortcut.TargetPath = $alacrittyPath
        $shortcut.Arguments = "--config-file `"$alacrittyConfig\$($shortcutInfo.ConfigFile)`" --working-directory `"$($shortcutInfo.WorkingDir)`""

        if ($shortcutInfo.AdditionalArgs) {
            $shortcut.Arguments += " $($shortcutInfo.AdditionalArgs)"
        }

        $shortcut.Save()
    } else {
        Write-Host "Alacritty executable not found: $alacrittyPath"
    }
}

Read-Host -Prompt "Press Enter to exit"