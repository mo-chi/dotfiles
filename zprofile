# ------------------------------------
# asdf
# ------------------------------------
if [ -d $(brew --prefix asdf) ]; then
  source $(brew --prefix asdf)/libexec/asdf.sh
fi

# ------------------------------------
# Rust
# ------------------------------------
if [ -d $HOME/.cargo ]; then
  export PATH="$HOME/.cargo/bin:$PATH"
fi

# ------------------------------------
# Golang
# ------------------------------------
if [ -d $HOME/.go ]; then
  export GOROOT=$(go env GOROOT)
  export GOPATH=$HOME/.go
  export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
fi

# ------------------------------------
# direnv
# ------------------------------------
if which direnv > /dev/null; then
  export EDITOR=/usr/bin/vim
  eval "$(direnv hook zsh)"
fi
