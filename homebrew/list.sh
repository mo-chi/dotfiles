#!/bin/bash

echo "Homebrew でアプリケーションをインストールします"

apps=(
    asdf
    direnv
    gh
    git
    git-flow
    jq
    rustup-init
    the_silver_searcher
    tig
    tree
)

for app in ${apps[@]}
do
    # echo "  ${app} をインストール"
    brew install ${app}
done

# brew cask でアプリケーションをインストールする
apps=(
    alfred
    alt-tab
    docker
    google-chrome
    google-chrome-canary
    google-japanese-ime
    insomnia
    slack
    visual-studio-code
    visual-studio-code-insiders
)
for app in ${apps[@]}
do
    # echo "  ${app} をインストール"
    brew install --cask ${app}
done

brew cleanup

echo "Homebrew でアプリケーションをインストールしました"
