@echo off

echo Install though pkgm
echo ===
echo(

pnpm add -g @innocenzi/rename @vivliostyle/cli degit echo-cli npms-cli markserv open-cli png-to-ico retypeapp serve tldr ttf2woff2 vercel webtorrent-mpv-hook repomix
:: carbon-now ascii-silhouettify
pnpm add -g clean-css html-minifier js-beautify prettier svgo terser

pipx install ass2srt coloro commitizen doc2dash ffsubsync gethash hererocks pip_search subliminal vtt_to_srt3 wappalyzer yoga "rembg[cli]"
:: fotokilof csvs-to-sqlite sqlite-utils

cargo install autocast code2prompt didyoumean feel pipe-rename stylua sub-batch thes tidy-viewer trashy vimg

go install -v github.com/wowu/pro@latest
go install -v github.com/mandykoh/autocrop/cmd/autocrop@latest
go install -v github.com/515hikaru/mdtable2csv@latest
go install -v github.com/glitchedgitz/cook/v2/cmd/cook@latest
:: github.com/nektos/act@latest

pause