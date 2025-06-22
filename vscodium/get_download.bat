@ echo off

setlocal

set "VSCODIUM_DL=%HOME_DIR%\Usr\Download\vscodium"
cd %VSCODIUM_DL%

wget https://marketplace.visualstudio.com/_apis/public/gallery/publishers/davidhouchin/vsextensions/whitespace-plus/latest/vspackage
wget https://marketplace.visualstudio.com/_apis/public/gallery/publishers/vsls-contrib/vsextensions/gistfs/latest/vspackage
wget https://marketplace.visualstudio.com/_apis/public/gallery/publishers/sandcastle/vsextensions/vscode-open/latest/vspackage
wget https://marketplace.visualstudio.com/_apis/public/gallery/publishers/takuanporipori/vsextensions/indent2tree/latest/vspackage
wget https://marketplace.visualstudio.com/_apis/public/gallery/publishers/DanielMeza/vsextensions/kicad-syntax-highlighter/latest/vspackage
wget https://marketplace.visualstudio.com/_apis/public/gallery/publishers/pit00/vsextensions/text-marker-numbered/latest/vspackage
wget https://marketplace.visualstudio.com/_apis/public/gallery/publishers/thomas-mckanna/vsextensions/files2Prompt/latest/vspackage
wget https://marketplace.visualstudio.com/_apis/public/gallery/publishers/TaiyoFujii/vsextensions/novel-writer/latest/vspackage
wget https://marketplace.visualstudio.com/_apis/public/gallery/publishers/carbonsoda/vsextensions/latex-fold/latest/vspackage
wget https://marketplace.visualstudio.com/_apis/public/gallery/publishers/kennylong/vsextensions/kubernetes-yaml-formatter/latest/vspackage
wget https://marketplace.visualstudio.com/_apis/public/gallery/publishers/cweijan/vsextensions/epub-reader/latest/vspackage
wget https://marketplace.visualstudio.com/_apis/public/gallery/publishers/AtroxEGO/vsextensions/better-folding-plus/latest/vspackage
wget https://marketplace.visualstudio.com/_apis/public/gallery/publishers/LeonatKrasniqi/vsextensions/foldvscode/latest/vspackage
wget https://marketplace.visualstudio.com/_apis/public/gallery/publishers/hossaini/vsextensions/bootstrap-intellisense/latest/vspackage
wget https://marketplace.visualstudio.com/_apis/public/gallery/publishers/davidhouchin/vsextensions/whitespace-plus/latest/vspackage
wget https://marketplace.visualstudio.com/_apis/public/gallery/publishers/PolymerMallard/vsextensions/icon-snippets/latest/vspackage
wget https://marketplace.visualstudio.com/_apis/public/gallery/publishers/vstirbu/vsextensions/vscode-mermaid-preview/latest/vspackage
wget https://marketplace.visualstudio.com/_apis/public/gallery/publishers/TwoDevs/vsextensions/lightless/latest/vspackage
wget https://marketplace.visualstudio.com/_apis/public/gallery/publishers/OrelLazri/vsextensions/vanta/latest/vspackage

endlocal

pause