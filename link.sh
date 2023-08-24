#!/bin/sh

echo "シンボリックリンクを作成します"

echo "  zsh のシンボリックリンクを作成"
ln -sf ~/.dotfiles/zshrc ~/.zshrc
ln -sf ~/.dotfiles/zprofile ~/.zprofile

echo "  git のシンボリックリンクを作成"
ln -sf ~/.dotfiles/gitconfig ~/.gitconfig

echo "  tig のシンボリックリンクを作成"
ln -sf ~/.dotfiles/tigrc ~/.tigrc

echo "  vim のシンボリックリンクを作成"
ln -sf ~/.dotfiles/vim ~/.vim
ln -sf ~/.dotfiles/vimrc ~/.vimrc

echo "  node のシンボリックリンクを作成"
ln -sf ~/.dotfiles/npmrc ~/.npmrc

echo "  ruby のシンボリックリンクを作成"
ln -sf ~/.dotfiles/gemrc ~/.gemrc
ln -sf ~/.dotfiles/rspec ~/.rspec
ln -sf ~/.dotfiles/pryrc ~/.pryrc

echo "  sqlite のシンボリックリンクを作成"
ln -sf ~/.dotfiles/sqliterc ~/.sqliterc

echo "  VSCode のシンボリックリンクを作成"
ln -sf ~/.dotfiles/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
ln -sf ~/.dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json

ln -sf ~/.dotfiles/vscode/keybindings.json ~/Library/Application\ Support/Code\ -\ Insiders/User/keybindings.json
ln -sf ~/.dotfiles/vscode/settings.json ~/Library/Application\ Support/Code\ -\ Insiders/User/settings.json

echo "シンボリックリンクを作成しました"
