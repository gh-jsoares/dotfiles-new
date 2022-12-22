#!/usr/bin/env sh

HISTSIZE=1000000
SAVEHIST=1000000

export EDITOR='nvim'
export TERMINAL='alacritty'

# use neovim as manpager
export MANPAGER='nvim +Man!'
export MANWIDTH=999

# rust cargo
export PATH=$HOME/.cargo/bin/:$PATH

# golang
export PATH=$HOME/.local/share/go/bin/:$PATH
export GOPATH=$HOME/.local/share/go

# GPG sign
export GPG_TTY=$(tty)
