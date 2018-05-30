#!/bin/bash

git clone https://github.com/pyenv/pyenv.git ~/.pyenv
git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv

cat <<'EOF' >>~/.bash_profile
# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# pyenv init
# ref: https://github.com/pyenv/pyenv
export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
 
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
   
# pyenv-virtualenv init
# ref: https://github.com/pyenv/pyenv-virtualenv
eval "$(pyenv virtualenv-init -)"
EOF
