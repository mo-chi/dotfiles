#!/bin/sh

echo "asdf の設定を開始"

go_version="1.19"
python_version="3.9.1"
node_version="18.9.0"
# ruby_version="3.0.0"
# zig_version="0.9.1"
# done_version="1.27.0"

echo "  asdf 言語のプラグインを追加"
asdf plugin add golang
asdf plugin add nodejs
asdf plugin add python
# asdf plugin add ruby
# asdf plugin add zig https://github.com/asdf-community/asdf-zig.git
# asdf plugin-add deno https://github.com/asdf-community/asdf-deno.git

echo "  asdf 言語のバージョンをインストール"
asdf install golang $go_version
asdf install python $python_version
asdf install nodejs $node_version
# asdf install ruby $ruby_version
# asdf install zig $zig_version
# asdf install deno $done_version

echo "  asdf インストールしたバージョンを固定化します"
asdf global golang $go_version
asdf global python $python_version
asdf global nodejs $node_version
# asdf global ruby $ruby_version
# asdf global zig $zig_version
# asdf global deno $done_version

echo "asdf の設定を終了"
