# zshrc auto compile
if [ ! -f $HOME/.zshrc.zwc -o $HOME/.dotfiles/zshrc -nt $HOME/.zshrc.zwc ]; then
  zcompile $HOME/.zshrc
fi

# Path to your zsh installation.
ZSH=$HOME/.dotfiles/zsh

# Set name of the theme to load.
ZSH_CUSTOM=$ZSH/themes
ZSH_THEME="mochi"

# Set zcompdump
ZSH_COMPDUMP=$HOME/.zcompdump

# Set plugins
plugins=(
  zsh-autosuggestions
)

source $ZSH/my-zsh.sh

# PC 別の環境設定ファイルを読込む
source $HOME/.environments

# # Used profiling
# if (which zprof > /dev/null 2>&1) ;then
#   # zprof | less
#   zprof
# fi
