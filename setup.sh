#!/bin/sh

echo "setup を開始します"

# homebrew の設定
./homebrew/install.sh
./homebrew/list.sh

# シンボリックリンクの作成
./link.sh

# asdf プラグインの追加
./asdf.sh

# VSCode プラグインの追加
./vscode/extensions.sh

# git submodule の設定
echo "git submodule のインストール"
git submodule update

# shell を再ログインする
exec $SHELL -l

echo "setup を終了しました"
