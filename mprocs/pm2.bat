@echo off

mprocs ^
  "cd C:\Users\User\Usr\PM2\ePubViewer && gsudo pm2 serve . 4013 --name epubviewer --spa" ^
  "cd C:\Users\User\Usr\PM2\sreadium && gsudo pm2 serve . 4012 --name sreadium --spa" ^
  "cd C:\Users\User\Usr\PM2\vivliostyle-viewer-latest && gsudo pm2 serve viewer 4004 --name vivliostyle-viewer --spa" ^
  "cd C:\Users\User\Usr\PM2\pdf.js && gsudo pm2 serve build/generic 4007 --name pdfjs --spa" ^
  "cd C:\Users\User\Usr\PM2\kiwix-js-pwa && gsudo pm2 serve dist 5173 --name kiwix-js-pwa --spa --env production"

pause