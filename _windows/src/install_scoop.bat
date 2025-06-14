@echo off
setlocal

set bucket_package=7zip ^
activitywatch ^
advancedrenamer ^
agg ^
alacritty ^
alass ^
archwsl ^
audacity ^
autohotkey1.1 ^
autohotkey ^
bat ^
blender ^
broot ^
bulk-rename-command ^
bulk-rename-utility ^
bun ^
calibre ^
carnac ^
centertaskbar ^
chafa ^
clink ^
clink-completions ^
cmake ^
conemu ^
cpu-z ^
csview ^
curl ^
darktable ^
dbeaver ^
deskpins ^
detect-it-easy ^
ditto ^
dngrep ^
doggo ^
dolt ^
dufs ^
dupeguru ^
eartrumpet ^
espanso ^
etcher ^
everything-cli ^
exifcleaner ^
exifglass ^
exiftool ^
eza ^
fastcopy ^
fastfetch ^
fd ^
ffmpeg ^
fontreg ^
foxit-pdf-reader ^
freecad ^
fzf ^
geekuninstaller ^
gh ^
git ^
git-branchless ^
git-cliff ^
gitify ^
glow ^
goldendict ^
gpodder ^
gpu-z ^
grex ^
gridplayer ^
gsudo ^
gzip ^
handbrake ^
handbrake-cli ^
hosts-file-editor ^
hugo-extended ^
imageglass ^
imagemagick ^
inkscape ^
irfanview ^
jackett ^
jpegview-fork ^
jq ^
k-lite-codec-pack-basic-np ^
kdenlive ^
keepassxc ^
keypirinha ^
kicad ^
krita ^
libreoffice ^
librewolf ^
libwebp ^
lively ^
llvm ^
localsend ^
lockhunter ^
losslesscut ^
mediainfo ^
mediainfo-gui ^
meson ^
miktex ^
miniconda3-py310 ^
mkvtoolnix ^
mp3tag ^
mprocs ^
mpv ^
musescore ^
mupdf ^
neovide ^
neovim ^
ninja ^
nohboard ^
ntop ^
nvm ^
obs-studio ^
obsidian ^
omegat ^
onefetch ^
oxipng ^
pandoc ^
pdfarranger ^
perl ^
pngquant ^
pnpm ^
powersession-rs ^
pureref ^
putty ^
pwsh ^
python310 ^
qalculate ^
qbittorrent-enhanced ^
qimgv ^
qsv ^
quiterss ^
qutebrowser ^
qview ^
rapidee ^
raspberry-pi-imager ^
rbtray ^
reduce-memory ^
restart-explorer ^
ripgrep ^
rufus ^
sass ^
scc ^
sd ^
sd-card-formatter ^
sed ^
sharpkeys ^
shellexview ^
shotcut ^
sigil ^
sioyek ^
smarttaskbar ^
smartzip ^
sox ^
starship ^
staxrip ^
stirling-pdf ^
subtitleedit ^
sumatrapdf-installer ^
syncthing ^
t-clock ^
tageditor ^
tagspaces ^
telegram ^
tere ^
tesseract ^
tex-fmt ^
texlab ^
thorium-reader ^
thunderbird ^
trzsz ^
ultravnc ^
umi-ocr-paddle ^
unrar ^
upscayl ^
uv ^
vcxsrv ^
ventoy ^
video-compare ^
vlc ^
vscodium ^
wget ^
win32yank ^
winfetch ^
winmerge ^
winscp ^
winsshterm ^
wsl2-distro-manager ^
xmedia-recode ^
xnconvert ^
xan ^
yarn ^
youtube-music ^
yt-dlp ^
ytdlp-interface ^
zig ^
zlib ^
zoxide ^
zeal

set bucket_package_admin_install=sshfs-np ^
tailscale ^
windowsdesktop-runtime-6.0 ^
windowsdesktop-runtime-7.0 ^
windowsdesktop-runtime-lts

for %%p in (%bucket_package%) do (
    scoop install %%p
)

for %%p in (%bucket_package_admin_install%) do (
    gsudo scoop install %%p
)

set personal_bucket_package=7zip-extra ^
altbacktick ^
audiobookconverter ^
audiowaveform ^
cjam ^
dictzip ^
ffmpeg-batch-av-converter ^
hydralauncher ^
keppymidiconverter ^
lintalist ^
madamiru ^
nomeiryoui ^
pgstosrt ^
pro ^
rectanglewin ^
resizer2 ^
sizer ^
someruler ^
svg2png ^
wxmp3gain ^
wcap ^
webify

set personal_bucket_package_admin_install=sshfs-win-manager-np

for %%p in (%personal_bucket_package%) do (
    scoop install %%p
)

for %%p in (%personal_bucket_package_admin_install%) do (
    gsudo scoop install %%p
)

endlocal
pause