rem Add node.exe into PATH

@echo off

cd %*
start http://localhost:4323
alacritty --config-file "C:\Users\User\Git\dotfiles\alacritty\alacritty_cmder.toml" --command "serve.CMD . -p 4323"