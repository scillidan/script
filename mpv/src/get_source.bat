@echo off

setlocal

set "MPV_SRC=%HOME_DIR%\Usr\Source\mpv"
mkdir %MPV_SRC%
pushd %MPV_SRC%

git clone --depth=1 https://github.com/naiveinvestigator/save-playlist
git clone --depth=1 https://github.com/pierretom/autoselect-forced-sub
git clone --depth=1 https://github.com/joaquintorres/autosubsync-mpv
git clone --depth=1 https://github.com/po5/celebi
git clone --depth=1 https://github.com/mar04/chapters_for_mpv chapters_for_mpv
git clone --depth=1 https://github.com/po5/evafast
git clone --depth=1 https://github.com/directorscut82/find_subtitles find_subtitles
git clone --depth=1 https://github.com/natural-harmonia-gropius/hdr-toys
git clone --depth=1 https://github.com/natural-harmonia-gropius/input-event
git clone --depth=1 https://github.com/po5/memo
git clone --depth=1 https://github.com/mpv-player/mpv
git clone --depth=1 https://github.com/zxhzxhz/mpv-chapters
git clone --depth=1 https://github.com/Hill-98/mpv-config mpv-config@Hill-98
git clone --depth=1 https://github.com/zenwarr/mpv-config mpv-config@zenwarr
git clone --depth=1 https://github.com/cogentredtester/mpv-coverart
git clone --depth=1 https://github.com/magnum357i/mpv-dualsubtitles
git clone --depth=1 https://github.com/occivink/mpv-gallery-view
git clone --depth=1 https://github.com/gaesa/mpv-hold-accelerate
rem cd mpv-hold-accelerate
rem pnpm install --frozen-lockfile && pnpm run build
git clone --depth=1 https://github.com/guidocella/mpv-image-config
git clone --depth=1 https://github.com/occivink/mpv-image-viewer
git clone --depth=1 https://github.com/noaione/mpv-js-scripts
git clone --depth=1 https://github.com/liberlanco/mpv-lang-learner
git clone --depth=1 https://github.com/thinkmcflythink/mpv-loudnorm
git clone --depth=1 https://github.com/dudemanguy/mpv-manga-reader
git clone --depth=1 https://github.com/jonniek/mpv-nextfile
git clone --depth=1 https://github.com/wishyu/mpv-ontop-window
git clone --depth=1 https://github.com/ctlaltdefeat/mpv-open-imdb-page
git clone --depth=1 https://github.com/Zren/mpv-osc-tethys
git clone --depth=1 https://github.com/jonniek/mpv-playlistmanager
git clone --depth=1 https://github.com/christoph-heinrich/mpv-quality-menu
git clone --depth=1 https://github.com/Kayizoku/mpv-rename
git clone --depth=1 https://github.com/hhirtz/mpv-retro-shaders
git clone --depth=1 https://github.com/cogentredtester/mpv-scripts mpv-scripts@cogentredtester
git clone --depth=1 https://github.com/dyphire/mpv-scripts mpv-scripts@dyphire
git clone --depth=1 https://github.com/he2a/mpv-scripts mpv-scripts@he2a
git clone --depth=1 https://github.com/jonniek/mpv-scripts mpv-scripts@jonniek
git clone --depth=1 https://github.com/pzim-devdata/mpv-scripts mpv-scripts@pzim-devdata
git clone --depth=1 https://github.com/Seme4eg/mpv-scripts mpv-scripts@Seme4eg
git clone --depth=1 https://github.com/sibwaf/mpv-scripts mpv-scripts@sibwaf
git clone --depth=1 https://github.com/stax76/mpv-scripts mpv-scripts@stax76
git clone --depth=1 https://github.com/zc62/mpv-scripts mpv-scripts@zc62
git clone --depth=1 https://github.com/zenyd/mpv-scripts mpv-scripts@zenyd
git clone --depth=1 https://github.com/CogentRedTester/mpv-scroll-list
git clone --depth=1 https://github.com/CogentRedTester/mpv-search-page
git clone --depth=1 https://github.com/ben-kerman/mpv-sub-scripts
git clone --depth=1 https://github.com/christoph-heinrich/mpv-subtitle-lines
git clone --depth=1 https://github.com/genfu94/mpv-subtitle-retimer
git clone --depth=1 https://github.com/CogentRedTester/mpv-user-input
git clone --depth=1 https://github.com/shadax1/mpv_segment_length
git clone --depth=1 https://github.com/ayghub/open-dir
git clone --depth=1 https://gist.github.com/blackarcher21/162dc1bef708e90082c6c4f9500c1997 remember-volume.lua
git clone --depth=1 https://github.com/po5/thumbfast
git clone --depth=1 https://github.com/Ajatt-Tools/videoclip
git clone --depth=1 https://github.com/mrxdst/webtorrent-mpv-hook

rem git clone --depth=1 https://github.com/Ashyni/mpv-scripts mpv-scripts@Ashyni
rem git clone --depth=1 https://github.com/JKubovy/MPV-Watch-Later-OSD-Menu
rem git clone --depth=1 https://github.com/ento/mpv-cheatsheet
rem git clone --depth=1 https://github.com/hacel/recent
rem git clone --depth=1 https://github.com/jonniek/mpv-filenavigator
rem git clone --depth=1 https://github.com/jonniek/unseen-playlistmaker
rem git clone --depth=1 https://github.com/kelciour/mpv-scripts mpv-scripts@kelciour
rem git clone --depth=1 https://github.com/linguisticmind/mpv-scripts mpv-scripts@linguisticmind
rem git clone --depth=1 https://github.com/mfcc64/mpv-scripts mpv-scripts@mfcc64
rem git clone --depth=1 https://github.com/paradox460/mpv-scripts mpv-scripts@paradox460
rem git clone --depth=1 https://github.com/po5/remember_audio_geometry
rem git clone --depth=1 https://github.com/torque/mpv-progressbar
rem git clone --depth=1 https://github.com/vc-01/metadata-osd
rem git clone --depth=1 https://github.com/verygoodlee/mpv-pip

popd

endlocal

pause