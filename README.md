# dotfiles

dotfiles のリポジトリ

## 環境構築方法

```sh
git clone --recursive git@github.com:mo-chi/dotfiles.git .dotfiles

cd .dotfiles/

./setup.sh
```

```sh
cp environments ~/.environments

# git の設定を PC 用の設定に置き換える
vim ~/.environments
#############################################
# PC 用の設定
#############################################
# git
export GIT_COMMITTER_NAME="<GIT_COMMITTER_NAME を設定>"
export GIT_AUTHOR_NAME="<GIT_AUTHOR_NAME を設定>"
export EMAIL="<EMAIL を設定>"
```
