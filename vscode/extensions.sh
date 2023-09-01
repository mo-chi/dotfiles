#!/bin/bash

echo "VSCode のプラグインをインストールします"

extids=(
    ms-python.python
    ms-python.vscode-pylance
    rust-lang.rust-analyzer
    wayou.vscode-todo-highlight
)

for extid in ${extids[@]}
do
    # echo "  ${extid} をインストール"
    code --install-extension ${extid}
done

echo "VSCode のプラグインをインストールしました"
