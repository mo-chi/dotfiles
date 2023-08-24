#!/bin/bash

if test ! $(which brew); then
  echo "Homebrew インストールします"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Homebrew インストール済みです"
fi
