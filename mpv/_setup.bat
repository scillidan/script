@echo off

setlocal

rem call %~dp0\get\source.bat

rem call %~dp0\get\download.bat

echo Set env
echo ---
rem set "MPV_DIR=%HOME_DIR%\Usr\Opt\mpv\portable_config"
rem set "MPV_DIR=%HOME_DIR%\Usr\Opt\mpv"
set "MPV_DATA=%SCOOP_APPS_DIR%\mpv\current\portable_config"
set "MPV_DIR=%SCOOP_APPS_DIR%\mpv\current"
set "MPV_DOTFILE=%HOME_DIR%\Git\dotfiles\mpv"
set "MPV_SRC=%HOME_DIR%\Usr\Source\mpv"
set "MPV_DL=%HOME_DIR%\Usr\Download\mpv"

set "MPVC_VIDEO=%MPV_DOTFILE%\mpvc_video"
set "MPVC_STREAM=%MPV_DOTFILE%\mpvc_stream"
set "MPVC_EDIT=%MPV_DOTFILE%\mpvc_edit"
set "MPVC_MUSIC=%MPV_DOTFILE%\mpvc_music"
set "MPVC_KARAOK=%MPV_DOTFILE%\mpvc_karaok"
set "MPVC_MANGA=%MPV_DOTFILE%\mpvc_manga"
set "MPVC_TEST=%MPV_DOTFILE%\mpvc_test"
echo(

echo Initialize
echo ---
set "MPVC_ALL=%MPVC_GLOBAL% %MPVC_TEST% %MPVC_VIDEO% %MPVC_STREAM% %MPVC_EDIT% %MPVC_MUSIC% %MPVC_KARAOK% %MPVC_MANGA%"
for %%d in (%MPVC_ALL%) do (
    rmdir /S /Q "%%d"
    del "%%d\mpv.conf"
    del "%%d\input.conf"
    mkdir "%%d"
    mkdir "%%d\scripts"
    mkdir "%%d\script-opts"
    mkdir "%%d\script-modules"
    mkdir "%%d\fonts"
    mkdir "%%d\watch_later"
)
echo(

echo Setup include config
echo ---
set "INCLUDE=%MPV_DOTFILE%\include"
type "%INCLUDE%\_global.conf" "%INCLUDE%\_subtitle.conf" "%INCLUDE%\_screenshot.conf" "include-opts\uosc.conf" "%INCLUDE%\video.conf" > "%MPVC_VIDEO%\mpv.conf"
type "%INCLUDE%\_global.conf" "%INCLUDE%\_subtitle.conf" "%INCLUDE%\_screenshot.conf" "%INCLUDE%\video.conf" "%INCLUDE%\stream.conf" > "%MPVC_STREAM%\mpv.conf"
type "%INCLUDE%\_global.conf" "%INCLUDE%\_subtitle.conf" "%INCLUDE%\_screenshot.conf" "include-opts\uosc.conf" "%INCLUDE%\video.conf" > "%MPVC_EDIT%\mpv.conf"
type "%INCLUDE%\_global.conf" "%INCLUDE%\_lyric.conf" "%INCLUDE%\music.conf" > "%MPVC_MUSIC%\mpv.conf"
type "%INCLUDE%\_global.conf" "%INCLUDE%\_subtitle.conf" "%INCLUDE%\manga.conf" > "%MPVC_MANGA%\mpv.conf"
echo(

echo Setup input config
echo ---
set "INPUT=%MPV_DOTFILE%\input"
type "%INPUT%\test.conf" > "%MPVC_TEST%\input.conf"
type "%INPUT%\_global.conf" "%INPUT%\_uosc.conf" "%INPUT%\video.conf" > "%MPVC_VIDEO%\input.conf"
type "%INPUT%\_global.conf" "%INPUT%\stream.conf" > "%MPVC_STREAM%\input.conf"
type "%INPUT%\_global.conf" "%INPUT%\_uosc.conf" "%INPUT%\edit.conf" > "%MPVC_EDIT%\input.conf"
type "%INPUT%\_global.conf" "%INPUT%\music.conf" > "%MPVC_MUSIC%\input.conf"
type "%INPUT%\_global.conf" "%INPUT%\manga.conf" > "%MPVC_MANGA%\input.conf"
echo(

echo Setup global config
echo ---
set "CONFIG_GLOBAL=%MPVC_VIDEO% %MPVC_STREAM% %MPVC_EDIT% %MPVC_MUSIC% %MPVC_KARAOK% %MPVC_MANGA%"
for %%d in (%CONFIG_GLOBAL%) do (
    mklink "%%d\script-modules\scroll-list.lua" "%MPV_SRC%\mpv-scroll-list\scroll-list.lua"
    mklink "%%d\scripts\user-input.lua" "%MPV_SRC%\mpv-user-input\user-input.lua"
    mklink "%%d\script-modules\user-input-module.lua" "%MPV_SRC%\mpv-user-input\user-input-module.lua"
    mklink "%%d\scripts\inputevent.lua" "%MPV_SRC%\input-event\inputevent.lua"
    mklink "%%d\scripts\search-page.lua" "%MPV_SRC%\mpv-search-page\search-page.lua"
    rem copy "%MPV_SRC%\mpv-search-page\search_page.conf" "%MPV_DOTFILE%\script-opts\search_page.conf"
    mklink "%%d\script-opts\search_page.conf" "%MPV_DOTFILE%\script-opts\search_page.conf"
    mklink "%%d\script-modules\extended-menu.lua" "%MPV_SRC%\mpv-scripts@Seme4eg\script-modules\extended-menu.lua"
    mklink "%%d\scripts\M-x.lua" "%MPV_SRC%\mpv-scripts@Seme4eg\M-x.lua"
    rem copy "%MPV_SRC%\mpv-scripts@Seme4eg\script-opts\M_x.conf" "%MPV_DOTFILE%\script-opts\M_x.conf"
    mklink "%%d\script-opts\M_x.conf" "%MPV_DOTFILE%\script-opts\M_x.conf"
    mklink "%%d\script-modules\leader.lua" "%MPV_SRC%\mpv-scripts@Seme4eg\script-modules\leader.lua"
    mklink "%%d\scripts\leader.lua" "%MPV_SRC%\mpv-scripts@Seme4eg\leader.lua"
    rem copy "%MPV_SRC%\mpv-scripts@Seme4eg\script-opts\leader.conf" "%MPV_DOTFILE%\script-opts\leader.conf"
    mklink "%%d\script-opts\leader.conf" "%MPV_DOTFILE%\script-opts\leader.conf"
    mklink "%%d\scripts\show-errors.lua" "%MPV_SRC%\mpv-scripts@cogentredtester\show-errors.lua"
    mklink "%%d\scripts\reload.lua" "%MPV_SRC%\mpv-scripts@sibwaf\reload.lua"
    mklink "%%d\scripts\auto-save-state.lua" "%MPV_DL%\auto-save-state.lua"
    mklink "%%d\scripts\blackout.lua" "%MPV_SRC%\mpv-scripts@sibwaf\blackout.lua"
    mklink "%%d\scripts\ontop-playback.lua" "%MPV_SRC%\mpv\TOOLS\lua\ontop-playback.lua"
    mklink "%%d\scripts\ontop-window.lua" "%MPV_SRC%\mpv-ontop-window\ontop-window.lua"
    rem copy "%MPV_SRC%\mpv-filenavigator\navigator.lua" "%%d\%MPV_DOTFILE%\scripts\navigator.lua"
    mklink "%%d\scripts\navigator.lua" "%MPV_DOTFILE%\scripts\navigator.lua"
    mklink "%%d\script-opts\navigator.conf" "%MPV_DOTFILE%\script-opts\navigator.conf"
    mklink "%%d\scripts\playlistmanager.lua" "%MPV_SRC%\mpv-playlistmanager\playlistmanager.lua"
    mklink "%%d\scripts\playlistmanager-save-interactive.lua" "%MPV_SRC%\mpv-playlistmanager\playlistmanager-save-interactive.lua"
    rem copy "%MPV_SRC%\mpv-playlistmanager\playlistmanager.conf" "%MPV_DOTFILE%\script-optsplaylistmanager.conf"
    mklink "%%d\script-opts\playlistmanager.conf" "%MPV_DOTFILE%\script-opts\playlistmanager.conf"
    mklink "%%d\scripts\Rename.lua" "%MPV_SRC%\mpv-rename\Rename.lua"
    mklink "%%d\scripts\delete_file.lua" "%MPV_SRC%\mpv-scripts@zenyd\delete_file.lua"
    mklink "%%d\script-opts\delete_file.conf" "%MPV_DOTFILE%\script-opts\delete_file.conf"
    mklink "%%d\scripts\open-dir.lua" "%MPV_SRC%\open-dir\open-dir.lua"
)

echo Setup mpvc-vdieo shader config
echo ---
set "SHADER=%MPVC_VIDEO%"
for %%d in (%SHADER%) do (
    mklink "%%d\scripts\sview.lua" "%MPV_SRC%\mpv-scripts@he2a\scripts\sview.lua"
    mklink "%%d\scripts\hdr-toys-helper.lua" "%MPV_DL%\hdr-toys\scripts\hdr-toys-helper.lua"
    type "%MPV_DL%\hdr-toys\hdr-toys.conf" >> "%%d\mpv.conf"
    type "%MPV_SRC%\mpv-retro-shaders\all.conf" >> "%%d\mpv.conf"
    mkdir "%%d\shaders"
    mklink /J "%%d\shaders\hdr-toys" "%MPV_SRC%\hdr-toys\shaders\hdr-toys"
    mklink /J "%%d\shaders\mpv-retro-shaders" "%MPV_SRC%\mpv-retro-shaders"
)
echo(

echo Setup mpvc-video, mpvc-edit UI
echo ---
set "UI_UOSC=%MPVC_VIDEO% %MPVC_EDIT%"
for %%d in (%UI_UOSC%) do (
    mklink /J "%%d\scripts\uosc" "%MPV_DL%\uosc\scripts\uosc"
    type "%MPV_DL%\uosc.conf" >> "%%d\script-opts\uosc.conf"
    type "%MPV_DOTFILE%\script-opts\uosc.conf" >> "%%d\script-opts\uosc.conf"
)
echo(

echo Setup mpvc-stream UI
echo ---
set "UI_TETHYS=%MPVC_STREAM%"
for %%d in (%UI_TETHYS%) do (
    mklink "%%d\scripts\mpv_thumbnail_script_server.lua" "%MPV_DL%\mpv_thumbnail_script_server.lua"
    mklink "%%d\scripts\mpv_thumbnail_script_client_osc.lua" "%MPV_DL%\mpv_thumbnail_script_client_osc.lua"
    mklink "%%d\scripts\osc_tethys.lua" "%MPV_SRC%\mpv-osc-tethys\osc_tethys.lua"
    rem mklink "%%d\scripts\mpv_thumbnail_script_server.lua" "%MPV_SRC%\mpv_thumbnail_script_server.lua"
    mklink "%%d\script-opts\tethys.conf" "%MPV_DOTFILE%\script-opts\tethys.conf"
    mklink "%%d\script-opts\osc.conf" "%MPV_DOTFILE%\script-opts\osc.conf"
    rem mklink "%%d\script-opts\mpv_thumbnail_script.conf" "%MPV_DOTFILE%\script-opts\mpv_thumbnail_script.conf"
    mklink "%%d\script-opts\autoload.conf" "%MPV_DOTFILE%\script-opts\autoload.conf"
)
echo(

echo Setup mpvc-video
echo ---
set "CONFIG_DIR_VIDEO=%MPVC_VIDEO%"
rem mklink "%%d\scripts\dynamic-crop.lua" "%MPV_SRC%\mpv-scripts@Ashyni\dynamic-crop.lua"
for %%d in (%CONFIG_DIR_VIDEO%) do (
    mklink "%%d\scripts\memo.lua" "%MPV_SRC%\memo\memo.lua"
    rem copy "%MPV_SRC%\memo\memo.conf" "%MPV_DOTFILE%\script-opts\memo.conf"
    type "include-opts\memo.conf" >> "%%d\mpv.conf"
    mklink "%%d\script-opts\memo.conf" "%MPV_DOTFILE%\script-opts\memo.conf"
    mklink "%%d\scripts\subtitle-lines.lua" "%MPV_SRC%\mpv-subtitle-lines\subtitle-lines.lua"
    mklink "%%d\scripts\thumbfast.lua" "%MPV_SRC%\thumbfast\thumbfast.lua"
    mklink "%%d\script-opts\thumbfast.conf" "%MPV_SRC%\thumbfast\thumbfast.conf"
    rem mklink "%%d\scripts\hold_accelerate.js" "%MPV_DL%\mpv-hold-accelerate\hold_accelerate.js"
    mklink "%%d\scripts\hold_accelerate.js" "%MPV_SRC%\mpv-hold-accelerate\dist\hold_accelerate.js"
    mklink "%%d\script-opts\hold_accelerate.conf" "%MPV_DOTFILE%\script-opts\hold_accelerate.conf"
    mklink "%%d\scripts\exit-fullscreen.lua" "%MPV_SRC%\mpv-scripts@zc62\exit-fullscreen.lua"
    mklink "%%d\scripts\fuzzydir.lua" "%MPV_SRC%\mpv-scripts@sibwaf\fuzzydir.lua"
    mklink "%%d\scripts\format-filename.js" "%MPV_SRC%\mpv-config@Hill-98\scripts\format-filename.js"
    mklink "%%d\scripts\editions-notification.lua" "%MPV_SRC%\mpv-scripts@cogentredtester\editions-notification.lua"
    mklink "%%d\scripts\remember-volume.lua" "%MPV_SRC%\remember-volume.lua\remember-volume.lua"
    mklink "%%d\scripts\autoselect-forced-sub.lua" "%MPV_SRC%\autoselect-forced-sub\autoselect-forced-sub.lua"
    rem copy "%MPV_SRC%\autoselect-forced-sub\afs.conf" "%MPV_DOTFILE%\script-opts\afs.conf"
    mklink "%%d\script-opts\afs.conf" "%MPV_DOTFILE%\script-opts\afs.conf"
    mklink "%%d\scripts\mpv-sub_not_forced_not_sdh.lua" "%MPV_SRC%\mpv-scripts@pzim-devdata\mpv-sub_not_forced_not_sdh.lua"
    mklink "%%d\scripts\restore-subtitles.lua" "%MPV_SRC%\mpv-config@zenwarr\scripts\restore-subtitles.lua"
    mklink "%%d\scripts\dualsubtitles.lua" "%MPV_SRC%\mpv-dualsubtitles\dualsubtitles.lua"
    mklink "%%d\script-opts\dualsubtitles.conf" "%MPV_DOTFILE%\script-opts\dualsubtitles.conf"
    mklink "%%d\scripts\sub_export.lua" "%MPV_SRC%\mpv-scripts@dyphire\sub_export.lua"
    rem copy "%MPV_SRC%\find_subtitles\find_subtitles.lua" "%%d\%MPV_DOTFILE%\scripts\find_subtitles.lua"
    mklink "%%d\scripts\find_subtitles.lua" "%MPV_DOTFILE%\scripts\find_subtitles.lua"
    mklink /J "%%d\scripts\mpv-subtitle-retimer" "%MPV_SRC%\mpv-subtitle-retimer\src"
    mklink /J "%%d\scripts\autosubsync-mpv" "%MPV_SRC%\autosubsync-mpv"
    mklink "%%d\script-opts\autosubsync.conf" "%MPV_DOTFILE%\script-opts\autosubsync.conf"
    mklink "%%d\scripts\lang-learner.lua" "%MPV_SRC%\mpv-lang-learner\lang-learner.lua"
    rem copy "%MPV_SRC%\mpv-lang-learner\lang-learner.conf" "%%d\scripts\lang-learner.conf"
    mklink "%%d\script-opts\lang-learner.conf" "%MPV_DOTFILE%\script-opts\lang-learner.conf"
    mklink "%%d\scripts\mpv_chapters.js" "%MPV_SRC%\mpv-chapters\mpv_chapters.js"
    mklink /J "%%d\scripts\mpv-open-imdb-page" "%MPV_SRC%\mpv-open-imdb-page"
)
echo(

echo Setup mpvc-stream
echo ---
set "CONFIG_DIR_STREAM=%MPVC_STREAM%"
for %%d in (%CONFIG_DIR_STREAM%) do (
    mklink "%%d\scripts\celebi.lua" "%MPV_SRC%\celebi\celebi.lua"
    rem copy "%MPV_SRC%\celebi\celebi.conf" "%MPV_DOTFILE%\script-opts\celebi.conf"
    mklink "%%d\script-opts\celebi.conf" "%MPV_DOTFILE%\script-opts\celebi.conf"
    mklink "%%d\scripts\autoload.lua" "%MPV_SRC%\mpv\TOOLS\lua\autoload.lua"
    mklink "%%d\script-opts\autoload.conf" "%MPV_DOTFILE%\script-opts\autoload.conf"
    mklink "%%d\scripts\quality-menu.lua" "%MPV_SRC%\mpv-quality-menu\quality-menu.lua"
    mklink "%%d\script-opts\quality-menu.conf" "%MPV_SRC%\mpv-quality-menu\quality-menu.conf"
    mklink "%%d\scripts\appendURL.lua" "%MPV_SRC%\mpv-scripts@jonniek\appendURL.lua"
    mklink "%%d\scripts\webtorrent.js" "%MPV_SRC%\webtorrent-mpv-hook\build\webtorrent.js"
    mklink "%%d\script-opts\webtorrent.conf" "%MPV_DOTFILE%\script-opts\webtorrent.conf"
)
rmdir /S /Q "%HOME_DIR%\Usr\Opt\mpv_stream"
mkdir "%HOME_DIR%\Usr\Opt\mpv_stream"
copy "%MPV_DIR%\mpv.exe" "%HOME_DIR%\Usr\Opt\mpv_stream\mpv.exe"
copy "%MPV_DIR%\mpv.com" "%HOME_DIR%\Usr\Opt\mpv_stream\mpv.com"
copy "%MPV_DIR%\d3dcompiler_43.dll" "%HOME_DIR%\Usr\Opt\mpv_stream\d3dcompiler_43.dll"
mklink /J "%HOME_DIR%\Usr\Opt\mpv_stream\portable_config" "%MPV_DOTFILE%\mpvc_stream"
echo(

echo Setup mpvc-edit
echo ---
set "CONFIG_DIR_EDIT=%MPVC_EDIT%"
for %%d in (%CONFIG_DIR_EDIT%) do (
    mklink "%%d\scripts\evafast.lua" "%MPV_SRC%\evafast\evafast.lua"
    rem copy MPV_SRC%\evafast\evafast.conf" "%MPV_DOTFILE%\script-opts\evafast.conf"
    mklink "%%d\script-opts\evafast.conf" "%MPV_DOTFILE%\script-opts\evafast.conf"
    mklink "%%d\scripts\sub-pause.lua" "%MPV_SRC%\mpv-sub-scripts\sub-pause.lua"
    mklink "%%d\scripts\sub-skip.lua" "%MPV_SRC%\mpv-sub-scripts\sub-skip.lua"
    mklink "%%d\script-opts\sub_pause.conf" "%MPV_DOTFILE%\script-opts\sub_pause.conf"
    mklink "%%d\script-opts\sub_skip.conf" "%MPV_DOTFILE%\script-opts\sub_skip.conf"
    mklink "%%d\scripts\chapters.lua" "%MPV_SRC%\chapters_for_mpv\chapters.lua"
    mklink "%%d\scripts\mpv_segment_length.lua" "%MPV_SRC%\mpv_segment_length\mpv_segment_length.lua"
    mklink /J "%%d\scripts\videoclip" "%MPV_SRC%\videoclip"
    mklink "%%d\script-opts\videoclip.conf" "%MPV_DOTFILE%\script-opts\videoclip.conf"
    mklink "%%d\scripts\screenshot-mosaic.js" "%MPV_SRC%\mpv-js-scripts\dist\screenshot-mosaic.js"
    mklink "%%d\script-opts\screenshot-mosaic.conf" "%MPV_DOTFILE%\script-opts\screenshot-mosaic.conf"
)
echo(

echo Setup mpvc-music
echo ---
rmdir /S /Q "%MPV_DATA%\real_loudnorm"
set "CONFIG_DIR_MUSIC=%MPVC_MUSIC%"
for %%d in (%CONFIG_DIR_MUSIC%) do (
    mklink /J "%%d\scripts\real_loudnorm" "%MPV_SRC%\mpv-loudnorm"
    mklink "%%d\scripts\coverart.lua" "%MPV_SRC%\mpv-coverart\coverart.lua"
    rem copy "%MPV_SRC%\mpv-coverart\coverart.conf" "%MPV_DOTFILE%\script-opts\coverart.conf"
    mklink "%%d\script-opts\coverart.conf" "%MPV_DOTFILE%\script-opts\coverart.conf"
    mklink "%%d\scripts\playlistmanager-save-interactive.lua" "%MPV_SRC%\mpv-playlistmanager\playlistmanager.lua"
    mklink "%%d\script-opts\playlistmanager.conf" "%MPV_SRC%\mpv-playlistmanager\playlistmanager.conf"
    mklink "%%d\scripts\save-playlist.lua" "%MPV_SRC%\mpv-scripts@cogentredtester\save-playlist.lua"
    mklink "%%d\scripts\dualsubtitles.lua" "%MPV_SRC%\mpv-dualsubtitles\dualsubtitles.lua"
    mklink "%%d\script-opts\dualsubtitles.conf" "%MPV_DOTFILE%\script-opts\dualsubtitles.conf"
    rem mklink "%%d\scripts\metadata_osd.lua" "%MPV_SRC%\metadata-osd\scripts\metadata_osd.lua"
    rem rem copy "%MPV_SRC%\metadata-osd\script-opts\metadata_osd.conf" "%%d\%MPV_DOTFILE%\script-opts\metadata_osd.conf"
    rem mklink "%%d\script-optsmetadata_osd.conf" "%MPV_DOTFILE%\script-opts\metadata_osd.conf"
)
echo(

echo Setup mpvc-karaok
echo ---
set "CONFIG_DIR_KARAOK=%MPVC_KARAOK%"
for %%d in (%CONFIG_DIR_KARAOK%) do (
    mklink "%%d\scripts\smart_volume.lua" "%MPV_SRC%\mpv-scripts@stax76\smart_volume.lua"
)
echo(

echo Setup mpvc-manga
echo ---
set "CONFIG_DIR_MANGA=%MPVC_MANGA%"
for %%d in (%CONFIG_DIR_MANGA%) do (
    mklink "%%d\scripts\memo.lua" "%MPV_SRC%\memo\memo.lua"
    rem copy "%MPV_SRC%\memo\memo.conf" "%MPV_DOTFILE%\script-opts\memo.conf"
    type "include-opts\memo.conf" >> "%%d\mpv.conf"
    mklink "%%d\script-opts\memo.conf" "%MPV_DOTFILE%\script-opts\memo.conf"
    rem mklink "%%d\scripts\watch_later_osd_menu.lua" "%MPV_SRC%\MPV-Watch-Later-OSD-Menu\watch_later_osd_menu.lua"
    rem rem copy "%MPV_SRC%\MPV-Watch-Later-OSD-Menu\script-opts\watch_later_osd_menu.conf" "%MPV_DOTFILE%\script-opts\watch_later_osd_menu.conf"
    rem mklink "%%d\script-opts\watch_later_osd_menu.conf" "%MPV_DOTFILE%\script-opts\watch_later_osd_menu.conf"
    rem mklink "%%d\scripts\recent.lua" "%MPV_SRC%\recent\recent.lua"
    rem rem copy "%MPV_SRC%\recent\recent.conf" "%MPV_DOTFILE%\script-opts\script-opts\recent.conf"
    rem mklink "%%d\script-opts\recent.conf" "%MPV_DOTFILE%\script-opts\recent.conf"
    mklink "%%d\script-modules\gallery.lua" "%MPV_SRC%\mpv-gallery-view\script-modules\gallery.lua"
    mklink "%%d\scripts\gallery-thumbgen.lua" "%MPV_SRC%\mpv-gallery-view\scripts\gallery-thumbgen.lua"
    mklink "%%d\scripts\playlist-view.lua" "%MPV_SRC%\mpv-gallery-view\scripts\playlist-view.lua"
    rem copy "%MPV_SRC%\mpv-gallery-view\script-opts\playlist_view.conf" "%MPV_DOTFILE%\script-opts\playlist_view.conf"
    mklink "%%d\script-opts\playlist_view.conf" "%MPV_DOTFILE%\script-opts\playlist_view.conf"
    mklink "%%d\scripts\manga-reader.lua" "%MPV_SRC%\mpv-manga-reader\manga-reader.lua"
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
)
echo(

echo Setup mpvc-image
echo ---
set "CONFIG_DIR_IMAGE=%MPVC_IMAGE%"
for %%d in (%CONFIG_DIR_IMAGE%) do (
    mklink "%%d\scripts\nextfile.lua" "%MPV_SRC%\mpv-nextfile\nextfile.lua"
    mklink "%%d\scripts\autoloop.lua" "%MPV_SRC%\mpv-scripts@zc62\autoloop.lua"
    mklink "%%d\scripts\align-images.lua" "%MPV_SRC%\mpv-image-config\scripts\align-images.lua"
    mklink "%%d\scripts\image-bindings.lua" "%MPV_SRC%\mpv-image-config\scripts\image-bindings.lua"
    rem copy "%MPV_SRC%\mpv-image-config\script-opts\align_images.conf" "%MPV_DOTFILE%\script-opts\align_images.conf"
    rem copy "%MPV_SRC%\mpv-image-config\script-opts\image_bindings.conf" "%MPV_DOTFILE%\script-opts\image_bindings.conf"
    mklink "%%d\script-opts\align_images.conf" "%MPV_DOTFILE%\script-opts\align_images.conf"
    mklink "%%d\script-opts\image_bindings.conf" "%MPV_DOTFILE%\script-opts\image_bindings.conf"
    type "%MPV_SRC%\mpv-image-config\mpv.conf" >> "%%d\mpv.conf"
    type "%MPV_SRC%\mpv-image-config\input.conf" >> "%%d\input.conf"
)
echo(

echo Set mpvc-video as default config
echo ---
rmdir /S /Q %MPV_DATA%
mkdir %MPV_DATA%
fastcopy /open_window /auto_close "%MPVC_VIDEO%" /to="%MPV_DATA%"
echo(

echo Setup test config
echo ---
set "CONFIG_DIR_TEST=%MPVC_TEST%"
for %%d in (%CONFIG_DIR_TEST%) do (
    rem mklink "%%d\scripts\progressbar.lua" "%MPV_DL%\progressbar-2024.06.19.0.lua"
    rem rem mklink "%%d\script-opts\torque-progressbar.conf" "%MPV_SRC%\torque-progressbar.conf"
    rem mklink "%%d\script-opts\torque-progressbar.conf" "%MPV_DOTFILE%\script-opts\torque-progressbar.conf"
)
echo(

endlocal

pause