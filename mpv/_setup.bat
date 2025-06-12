@echo off

setlocal

rem call %~dp0\get\source.bat
rem call %~dp0\get\download.bat

echo Init
echo ---
set "MPV_DATA=%SCOOP_APPS_DIR%\mpv\current\portable_config"
set "MPV_DIR=%SCOOP_APPS_DIR%\mpv\current"
set "MPV_DOTFILE=%HOME_DIR%\Git\dotfiles\mpv"
set "MPV_SRC=%HOME_DIR%\Usr\Source\mpv"
set "MPV_DL=%HOME_DIR%\Usr\Download\mpv"
set "MPVC_VIDEO=%MPV_DOTFILE%\mpvc_video"
set "MPVC_MANGA=%MPV_DOTFILE%\mpvc_manga"
set "MPVC_MUSIC=%MPV_DOTFILE%\mpvc_music"
set "MPVC_ALL=%MPVC_GLOBAL% %MPVC_VIDEO% %MPVC_MUSIC% %MPVC_MANGA%"
for %%d in (%MPVC_ALL%) do (
    rmdir /S /Q "%%d"
    del "%%d\mpv.conf"
    del "%%d\input.conf"
    mkdir "%%d"
    mkdir "%%d\fonts"
    mkdir "%%d\scripts"
    mkdir "%%d\script-modules"
    mkdir "%%d\script-opts"
    mkdir "%%d\shaders"
    mkdir "%%d\watch_later"
)
echo(

echo include/** to mpv.conf
echo ---
set "INCLUDE=%MPV_DOTFILE%\include"
type "%INCLUDE%\global.conf" "%INCLUDE%\video.conf" > "%MPVC_VIDEO%\mpv.conf"
type "%INCLUDE%\global.conf" "%INCLUDE%\music.conf" > "%MPVC_MUSIC%\mpv.conf"
type "%INCLUDE%\global.conf" "%INCLUDE%\manga.conf" > "%MPVC_MANGA%\mpv.conf"
echo(

echo input/** to input.conf
echo ---
set "INPUT=%MPV_DOTFILE%\input"
type "%INPUT%\global.conf" "%INPUT%\video.conf" > "%MPVC_VIDEO%\input.conf"
type "%INPUT%\global.conf" "%INPUT%\music.conf" > "%MPVC_MUSIC%\input.conf"
type "%INPUT%\global.conf" "%INPUT%\manga.conf" > "%MPVC_MANGA%\input.conf"
echo(

echo global config
echo ---
set "CONFIG_GLOBAL=%MPVC_VIDEO% %MPVC_MUSIC% %MPVC_MANGA%"
for %%d in (%CONFIG_GLOBAL%) do (
    echo UI
    echo ===
    echo(

    echo uosc
    echo ---
    mklink /J "%%d\scripts\uosc" "%MPV_DL%\uosc\scripts\uosc"
    echo(

    echo thumbfast
    echo ---
    mklink "%%d\scripts\thumbfast.lua" "%MPV_SRC%\thumbfast\thumbfast.lua"
    mklink "%%d\script-opts\thumbfast.conf" "%MPV_SRC%\thumbfast\thumbfast.conf"
    echo(

    echo Shader
    echo ===
    echo(

    echo hdr-toys
    echo ---
    mklink "%%d\scripts\hdr-toys-helper.lua" "%MPV_DL%\hdr-toys\scripts\hdr-toys-helper.lua"
    mklink /J "%%d\shaders\hdr-toys" "%MPV_SRC%\hdr-toys\shaders\hdr-toys"
    type "%MPV_DL%\hdr-toys\hdr-toys.conf" >> "%%d\mpv.conf"
    echo(

    echo mpv-retro-shaders
    echo ---
    mklink /J "%%d\shaders\mpv-retro-shaders" "%MPV_SRC%\mpv-retro-shaders"
    type "%MPV_SRC%\mpv-retro-shaders\all.conf" >> "%%d\mpv.conf"
    echo(

    echo(
    echo mpv-scripts@he2a
    echo ---
    mklink "%%d\scripts\sview.lua" "%MPV_SRC%\mpv-scripts@he2a\scripts\sview.lua"
    echo(

    echo File
    echo ===
    echo(

    echo mpv-scripts@cogentredtester
    echo ---
    mklink "%%d\scripts\editions-notification.lua" "%MPV_SRC%\mpv-scripts@cogentredtester\editions-notification.lua"
    echo(

    echo mpv-config@Hill-98
    echo ---
    mklink "%%d\scripts\format-filename.js" "%MPV_SRC%\mpv-config@Hill-98\scripts\format-filename.js"
    echo(

    echo mpv-filenavigator
    echo ---
    mklink "%%d\scripts\navigator.lua" "%MPV_SRC%\mpv-filenavigator\navigator.lua"
    rem mklink "%%d\scripts\navigator.lua" "%MPV_DOTFILE%\scripts\navigator.lua"
    mklink "%%d\script-opts\navigator.conf" "%MPV_DOTFILE%\script-opts\navigator.conf"
    echo(

    echo mpv-playlistmanager
    echo ---
    mklink "%%d\scripts\playlistmanager.lua" "%MPV_SRC%\mpv-playlistmanager\playlistmanager.lua"
    mklink "%%d\scripts\playlistmanager-save-interactive.lua" "%MPV_SRC%\mpv-playlistmanager\playlistmanager-save-interactive.lua"
    :: copy "%MPV_SRC%\mpv-playlistmanager\playlistmanager.conf" "%MPV_DOTFILE%\script-optsplaylistmanager.conf"
    mklink "%%d\script-opts\playlistmanager.conf" "%MPV_DOTFILE%\script-opts\playlistmanager.conf"
    echo(

    echo mpv-scripts@sibwaf
    echo ---
    mklink "%%d\scripts\fuzzydir.lua" "%MPV_SRC%\mpv-scripts@sibwaf\fuzzydir.lua"
    mklink "%%d\scripts\reload.lua" "%MPV_SRC%\mpv-scripts@sibwaf\reload.lua"
    echo(

    echo mpv-scripts@zenyd
    echo ---
    mklink "%%d\scripts\delete_file.lua" "%MPV_SRC%\mpv-scripts@zenyd\delete_file.lua"
    mklink "%%d\script-opts\delete_file.conf" "%MPV_DOTFILE%\script-opts\delete_file.conf"
    echo(

    echo mpv-rename
    echo ---
    mklink "%%d\scripts\Rename.lua" "%MPV_SRC%\mpv-rename\Rename.lua"
    echo(

    echo open-dir
    echo ---
    mklink "%%d\scripts\open-dir.lua" "%MPV_SRC%\open-dir\open-dir.lua"
    echo(

    echo Playback
    echo ===

    echo auto-save-state.lua
    echo ---
    mklink "%%d\scripts\auto-save-state.lua" "%MPV_DL%\auto-save-state.lua"
    echo(

    echo celebi
    echo ---
    mklink "%%d\scripts\celebi.lua" "%MPV_SRC%\celebi\celebi.lua"
    :: copy "%MPV_SRC%\celebi\celebi.conf" "%MPV_DOTFILE%\script-opts\celebi.conf"
    mklink "%%d\script-opts\celebi.conf" "%MPV_DOTFILE%\script-opts\celebi.conf"
    echo(

    echo memo
    echo ---
    mklink "%%d\scripts\memo.lua" "%MPV_SRC%\memo\memo.lua"
    :: copy "%MPV_SRC%\memo\memo.conf" "%MPV_DOTFILE%\script-opts\memo.conf"
    mklink "%%d\script-opts\memo.conf" "%MPV_DOTFILE%\script-opts\memo.conf"
    echo(

    echo mpv-scripts@zc62
    echo ---
    mklink "%%d\scripts\autoloop.lua" "%MPV_SRC%\mpv-scripts@zc62\autoloop.lua"
    mklink "%%d\scripts\exit-fullscreen.lua" "%MPV_SRC%\mpv-scripts@zc62\exit-fullscreen.lua"
    echo(

    echo mpv-ontop-window
    echo ---
    mklink "%%d\scripts\ontop-window.lua" "%MPV_SRC%\mpv-ontop-window\ontop-window.lua"
    echo(

    echo mpv-scripts@sibwaf
    echo ---
    mklink "%%d\scripts\blackout.lua" "%MPV_SRC%\mpv-scripts@sibwaf\blackout.lua"
    echo(

    echo mpv-hold-accelerate
    echo ---
    :: mklink "%%d\scripts\hold_accelerate.js" "%MPV_DL%\mpv-hold-accelerate\hold_accelerate.js"
    mklink "%%d\scripts\hold_accelerate.js" "%MPV_SRC%\mpv-hold-accelerate\dist\hold_accelerate.js"
    mklink "%%d\script-opts\hold_accelerate.conf" "%MPV_DOTFILE%\script-opts\hold_accelerate.conf"
    echo(

    echo ontop-playback
    echo ---
    mklink "%%d\scripts\ontop-playback.lua" "%MPV_SRC%\mpv\TOOLS\lua\ontop-playback.lua"
    echo(

    echo Chapter
    echo ===
    echo chapters_for_mpv
    echo ---
    mklink "%%d\scripts\chapters.lua" "%MPV_SRC%\chapters_for_mpv\chapters.lua"
    echo(

    echo mpv-chapters
    echo ---
    mklink "%%d\scripts\mpv_chapters.js" "%MPV_SRC%\mpv-chapters\mpv_chapters.js"
    echo(

    echo mpv-scripts@dyphire
    echo ---
    mklink "%%d\scripts\chapter-make-read.lua" "%MPV_SRC%\mpv-scripts@dyphire\chapter-make-read.lua"
    echo(

    echo Subtitle
    echo ===

    echo autoselect-forced-sub
    echo ---
    mklink "%%d\scripts\autoselect-forced-sub.lua" "%MPV_SRC%\autoselect-forced-sub\autoselect-forced-sub.lua"
    :: copy "%MPV_SRC%\autoselect-forced-sub\afs.conf" "%MPV_DOTFILE%\script-opts\afs.conf"
    mklink "%%d\script-opts\afs.conf" "%MPV_DOTFILE%\script-opts\afs.conf"
    echo(

    echo autosubsync-mpv
    echo ---
    mklink /J "%%d\scripts\autosubsync-mpv" "%MPV_SRC%\autosubsync-mpv"
    mklink "%%d\script-opts\autosubsync.conf" "%MPV_DOTFILE%\script-opts\autosubsync.conf"
    echo(

    echo mpv-config@zenwarr
    echo ---
    mklink "%%d\scripts\restore-subtitles.lua" "%MPV_SRC%\mpv-config@zenwarr\scripts\restore-subtitles.lua"
    echo(

    echo mpv-dualsubtitles
    echo ---
    mklink "%%d\scripts\dualsubtitles.lua" "%MPV_SRC%\mpv-dualsubtitles\dualsubtitles.lua"
    mklink "%%d\script-opts\dualsubtitles.conf" "%MPV_DOTFILE%\script-opts\dualsubtitles.conf"
    echo(

    echo mpv-lang-learner
    echo ---
    mklink "%%d\scripts\lang-learner.lua" "%MPV_SRC%\mpv-lang-learner\lang-learner.lua"
    :: copy "%MPV_SRC%\mpv-lang-learner\lang-learner.conf" "%%d\scripts\lang-learner.conf"
    mklink "%%d\script-opts\lang-learner.conf" "%MPV_DOTFILE%\script-opts\lang-learner.conf"
    echo(

    echo mpv-scripts@dyphire
    echo ---
    mklink "%%d\scripts\sub_export.lua" "%MPV_SRC%\mpv-scripts@dyphire\sub_export.lua"
    :: copy "%MPV_SRC%\find_subtitles\find_subtitles.lua" "%%d\%MPV_DOTFILE%\scripts\find_subtitles.lua"
    mklink "%%d\scripts\find_subtitles.lua" "%MPV_DOTFILE%\scripts\find_subtitles.lua"
    echo(

    echo mpv-scripts@pzim-devdata
    echo ---
    mklink "%%d\scripts\mpv-sub_not_forced_not_sdh.lua" "%MPV_SRC%\mpv-scripts@pzim-devdata\mpv-sub_not_forced_not_sdh.lua"
    echo(

    echo mpv-subtitle-retimer
    echo ---
    mklink /J "%%d\scripts\mpv-subtitle-retimer" "%MPV_SRC%\mpv-subtitle-retimer\src"
    echo(

    echo mpv-subtitle-lines
    echo ---
    mklink "%%d\scripts\subtitle-lines.lua" "%MPV_SRC%\mpv-subtitle-lines\subtitle-lines.lua"
    echo(

    echo Stream
    echo ===

    echo mpv
    echo ---
    mklink "%%d\scripts\autoload.lua" "%MPV_SRC%\mpv\TOOLS\lua\autoload.lua"
    mklink "%%d\script-opts\autoload.conf" "%MPV_DOTFILE%\script-opts\autoload.conf"
    echo(

    echo mpv-quality-menu
    echo ---
    mklink "%%d\scripts\quality-menu.lua" "%MPV_SRC%\mpv-quality-menu\quality-menu.lua"
    mklink "%%d\script-opts\quality-menu.conf" "%MPV_SRC%\mpv-quality-menu\quality-menu.conf"
    echo(

    echo mpv-scripts@jonniek
    echo ---
    mklink "%%d\scripts\appendURL.lua" "%MPV_SRC%\mpv-scripts@jonniek\appendURL.lua"
    echo(

    echo webtorrent-mpv-hook
    echo ---
    mklink "%%d\scripts\webtorrent.js" "%MPV_SRC%\webtorrent-mpv-hook\build\webtorrent.js"
    mklink "%%d\script-opts\webtorrent.conf" "%MPV_DOTFILE%\script-opts\webtorrent.conf"
    echo(

    echo Other
    echo ===
    echo (

    echo input-event
    echo ---
    mklink "%%d\scripts\inputevent.lua" "%MPV_SRC%\input-event\inputevent.lua"
    echo(

    echo mpv-scroll-list
    echo ---
    mklink "%%d\script-modules\scroll-list.lua" "%MPV_SRC%\mpv-scroll-list\scroll-list.lua"
    echo(

    echo mpv-search-page
    echo ---
    mklink "%%d\scripts\search-page.lua" "%MPV_SRC%\mpv-search-page\search-page.lua"
    :: copy "%MPV_SRC%\mpv-search-page\search_page.conf" "%MPV_DOTFILE%\script-opts\search_page.conf"
    mklink "%%d\script-opts\search_page.conf" "%MPV_DOTFILE%\script-opts\search_page.conf"
    echo(

    echo mpv_segment_length
    echo ---
    mklink "%%d\scripts\mpv_segment_length.lua" "%MPV_SRC%\mpv_segment_length\mpv_segment_length.lua"
    echo(

    echo mpv-scripts@cogentredtester
    echo ---
    mklink "%%d\scripts\show-errors.lua" "%MPV_SRC%\mpv-scripts@cogentredtester\show-errors.lua"
    echo(

    echo mpv-user-input
    echo ---
    mklink "%%d\scripts\user-input.lua" "%MPV_SRC%\mpv-user-input\user-input.lua"
    mklink "%%d\script-modules\user-input-module.lua" "%MPV_SRC%\mpv-user-input\user-input-module.lua"
    echo(
)

echo video config
echo ---
for %%d in (%MPVC_VIDEO%) do (
    echo mpv-cheatsheet
    echo ---
    :: copy "%MPV_SRC%\mpv-cheatsheet\dist\cheatsheet.js" "%MPV_DOTFILE%\scripts\cheatsheet.js"
    mklink "%%d\scripts\cheatsheet.js" "%MPV_DOTFILE%\scripts\cheatsheet_video.js"
    echo(

    echo mpv-scripts@Seme4eg
    echo ---
    mklink "%%d\script-modules\extended-menu.lua" "%MPV_SRC%\mpv-scripts@Seme4eg\script-modules\extended-menu.lua"
    mklink "%%d\scripts\M-x.lua" "%MPV_SRC%\mpv-scripts@Seme4eg\M-x.lua"
    :: copy "%MPV_SRC%\mpv-scripts@Seme4eg\script-opts\M_x.conf" "%MPV_DOTFILE%\script-opts\M_x.conf"
    mklink "%%d\script-opts\M_x.conf" "%MPV_DOTFILE%\script-opts\M_x.conf"
    mklink "%%d\script-modules\leader.lua" "%MPV_SRC%\mpv-scripts@Seme4eg\script-modules\leader.lua"
    :: copy "%MPV_SRC%\mpv-scripts@Seme4eg\leader.lua" "%MPV_DOTFILE%\scripts\leader.lua"
    mklink "%%d\scripts\leader.lua" "%MPV_DOTFILE%\scripts\leader_video.lua"
    :: copy "%MPV_SRC%\mpv-scripts@Seme4eg\script-opts\leader.conf" "%MPV_DOTFILE%\script-opts\leader.conf"
    mklink "%%d\script-opts\leader.conf" "%MPV_DOTFILE%\script-opts\leader.conf"
    echo(

    echo mpv-open-imdb-page
    echo ---
    mklink /J "%%d\scripts\mpv-open-imdb-page" "%MPV_SRC%\mpv-open-imdb-page"
    echo(

    echo mpv-sub-scripts
    echo ---
    mklink "%%d\scripts\sub-pause.lua" "%MPV_SRC%\mpv-sub-scripts\sub-pause.lua"
    mklink "%%d\script-opts\sub_pause.conf" "%MPV_DOTFILE%\script-opts\sub_pause.conf"
    mklink "%%d\scripts\sub-skip.lua" "%MPV_SRC%\mpv-sub-scripts\sub-skip.lua"
    mklink "%%d\script-opts\sub_skip.conf" "%MPV_DOTFILE%\script-opts\sub_skip.conf"
    echo(
)

echo music config
echo ---
for %%d in (%MPVC_MUSIC%) do (
    echo mpv-cheatsheet
    echo ---
    :: copy "%MPV_SRC%\mpv-cheatsheet\dist\cheatsheet.js" "%MPV_DOTFILE%\scripts\cheatsheet.js"
    mklink "%%d\scripts\cheatsheet.js" "%MPV_DOTFILE%\scripts\cheatsheet_music.js"
    echo(

    echo mpv-scripts@Seme4eg
    echo ---
    mklink "%%d\script-modules\extended-menu.lua" "%MPV_SRC%\mpv-scripts@Seme4eg\script-modules\extended-menu.lua"
    mklink "%%d\scripts\M-x.lua" "%MPV_SRC%\mpv-scripts@Seme4eg\M-x.lua"
    :: copy "%MPV_SRC%\mpv-scripts@Seme4eg\script-opts\M_x.conf" "%MPV_DOTFILE%\script-opts\M_x.conf"
    mklink "%%d\script-opts\M_x.conf" "%MPV_DOTFILE%\script-opts\M_x.conf"
    mklink "%%d\script-modules\leader.lua" "%MPV_SRC%\mpv-scripts@Seme4eg\script-modules\leader.lua"
    :: copy "%MPV_SRC%\mpv-scripts@Seme4eg\leader.lua" "%MPV_DOTFILE%\scripts\leader.lua"
    mklink "%%d\scripts\leader.lua" "%MPV_DOTFILE%\scripts\leader_music.lua"
    :: copy "%MPV_SRC%\mpv-scripts@Seme4eg\script-opts\leader.conf" "%MPV_DOTFILE%\script-opts\leader.conf"
    mklink "%%d\script-opts\leader.conf" "%MPV_DOTFILE%\script-opts\leader.conf"
    echo(

    echo mpv-loudnorm
    echo ---
    mklink /J "%%d\scripts\real_loudnorm" "%MPV_SRC%\mpv-loudnorm"
    echo(

    echo mpv-coverart
    echo ---
    mklink "%%d\scripts\coverart.lua" "%MPV_SRC%\mpv-coverart\coverart.lua"
    :: copy "%MPV_SRC%\mpv-coverart\coverart.conf" "%MPV_DOTFILE%\script-opts\coverart.conf"
    mklink "%%d\script-opts\coverart.conf" "%MPV_DOTFILE%\script-opts\coverart.conf"
    echo(

    echo mpv-scripts@cogentredtester
    echo ---
    mklink "%%d\scripts\save-playlist.lua" "%MPV_SRC%\mpv-scripts@cogentredtester\save-playlist.lua"
    echo(

    echo mpv-scripts@stax76
    echo ---
    mklink "%%d\scripts\smart_volume.lua" "%MPV_SRC%\mpv-scripts@stax76\smart_volume.lua"
    echo(
)

echo manga config
echo ---
set "CONFIG_DIR_MANGA=%MPVC_MANGA%"
for %%d in (%CONFIG_DIR_MANGA%) do (
    echo mpv-cheatsheet
    echo ---
    :: copy "%MPV_SRC%\mpv-cheatsheet\dist\cheatsheet.js" "%MPV_DOTFILE%\scripts\cheatsheet.js"
    mklink "%%d\scripts\cheatsheet.js" "%MPV_DOTFILE%\scripts\cheatsheet_manga.js"
    echo(

    echo mpv-scripts@Seme4eg
    echo ---
    mklink "%%d\script-modules\extended-menu.lua" "%MPV_SRC%\mpv-scripts@Seme4eg\script-modules\extended-menu.lua"
    mklink "%%d\scripts\M-x.lua" "%MPV_SRC%\mpv-scripts@Seme4eg\M-x.lua"
    :: copy "%MPV_SRC%\mpv-scripts@Seme4eg\script-opts\M_x.conf" "%MPV_DOTFILE%\script-opts\M_x.conf"
    mklink "%%d\script-opts\M_x.conf" "%MPV_DOTFILE%\script-opts\M_x.conf"
    mklink "%%d\script-modules\leader.lua" "%MPV_SRC%\mpv-scripts@Seme4eg\script-modules\leader.lua"
    :: copy "%MPV_SRC%\mpv-scripts@Seme4eg\leader.lua" "%MPV_DOTFILE%\scripts\leader.lua"
    mklink "%%d\scripts\leader.lua" "%MPV_DOTFILE%\scripts\leader_manga.lua"
    :: copy "%MPV_SRC%\mpv-scripts@Seme4eg\script-opts\leader.conf" "%MPV_DOTFILE%\script-opts\leader.conf"
    mklink "%%d\script-opts\leader.conf" "%MPV_DOTFILE%\script-opts\leader.conf"
    echo(

    echo Image
    echo ===

    echo mpv-gallery-view
    echo ---
    mklink "%%d\script-modules\gallery.lua" "%MPV_SRC%\mpv-gallery-view\script-modules\gallery.lua"
    mklink "%%d\scripts\gallery-thumbgen.lua" "%MPV_SRC%\mpv-gallery-view\scripts\gallery-thumbgen.lua"
    mklink "%%d\scripts\playlist-view.lua" "%MPV_SRC%\mpv-gallery-view\scripts\playlist-view.lua"
    :: copy "%MPV_SRC%\mpv-gallery-view\script-opts\playlist_view.conf" "%MPV_DOTFILE%\script-opts\playlist_view.conf"
    mklink "%%d\script-opts\playlist_view.conf" "%MPV_DOTFILE%\script-opts\playlist_view.conf"
    echo(

    echo mpv-image-config
    echo ---
    mklink "%%d\scripts\align-images.lua" "%MPV_SRC%\mpv-image-config\scripts\align-images.lua"
    mklink "%%d\scripts\image-bindings.lua" "%MPV_SRC%\mpv-image-config\scripts\image-bindings.lua"
    rem copy "%MPV_SRC%\mpv-image-config\script-opts\align_images.conf" "%MPV_DOTFILE%\script-opts\align_images.conf"
    rem copy "%MPV_SRC%\mpv-image-config\script-opts\image_bindings.conf" "%MPV_DOTFILE%\script-opts\image_bindings.conf"
    mklink "%%d\script-opts\align_images.conf" "%MPV_DOTFILE%\script-opts\align_images.conf"
    mklink "%%d\script-opts\image_bindings.conf" "%MPV_DOTFILE%\script-opts\image_bindings.conf"
    type "%MPV_SRC%\mpv-image-config\mpv.conf" >> "%%d\mpv.conf"
    type "%MPV_SRC%\mpv-image-config\input.conf" >> "%%d\input.conf"
    echo(

    echo mpv-image-viewer
    echo ---
    mklink "%%d\scripts\freeze-window.lua" "%MPV_SRC%\mpv-image-viewer\scripts\freeze-window.lua"
    mklink "%%d\scripts\image-positioning.lua" "%MPV_SRC%\mpv-image-viewer\scripts\image-positioning.lua"
    mklink "%%d\scripts\minimap.lua" "%MPV_SRC%\mpv-image-viewer\scripts\minimap.lua"
    mklink "%%d\scripts\status-line.lua" "%MPV_SRC%\mpv-image-viewer\scripts\status-line.lua"
    mklink "%%d\scripts\detect-image.lua" "%MPV_SRC%\mpv-image-viewer\scripts\detect-image.lua"
    rem copy "%MPV_SRC%\mpv-image-viewer\script-opts\image_positioning.conf" "%MPV_DOTFILE%\script-opts\image_positioning.conf"
    rem copy "%MPV_SRC%\mpv-image-viewer\script-opts\minimap.conf" "%MPV_DOTFILE%\script-opts\minimap.conf"
    rem copy "%MPV_SRC%\mpv-image-viewer\script-opts\status_line.conf" "%MPV_DOTFILE%\script-opts\status_line.conf"
    rem copy "%MPV_SRC%\mpv-image-viewer\script-opts\detect_image.conf" "%MPV_DOTFILE%\script-opts\detect_image.conf"
    mklink "%%d\script-opts\image_positioning.conf" "%MPV_DOTFILE%\script-opts\image_positioning.conf"
    mklink "%%d\script-opts\minimap.conf" "%MPV_DOTFILE%\script-opts\minimap.conf"
    mklink "%%d\script-opts\status_line.conf" "%MPV_DOTFILE%\script-opts\status_line.conf"
    mklink "%%d\script-opts\detect_image.conf" "%MPV_DOTFILE%\script-opts\detect_image.conf"
    echo(

    echo Manga
    echo ===

    echo mpv-manga-reader
    echo ---
    mklink "%%d\scripts\manga-reader.lua" "%MPV_SRC%\mpv-manga-reader\manga-reader.lua"
    echo(
    mklink "%%d\scripts\nextfile.lua" "%MPV_SRC%\mpv-nextfile\nextfile.lua"
)

echo Set video config as mpv default config
echo ---
rmdir /S /Q %MPV_DATA%
mkdir %MPV_DATA%
fastcopy /open_window /auto_close "%MPVC_VIDEO%" /to="%MPV_DATA%"
echo(

endlocal

pause