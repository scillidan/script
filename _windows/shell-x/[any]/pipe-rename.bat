@echo off

cd %*
gsudo renamer --editor "nvim" *
