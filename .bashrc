#!/bin/bash

python_dir=$HOME/Library/Python/2.7
export PATH=/opt/local/bin:$PATH
export ZSH=/Users/seun/.oh-my-zsh
export PATH=/usr/local/share/npm/bin:$PATH
export PATH=$python_dir/bin/:$PATH                          # pip executable
export PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH # Path GNU core utilities installed with brew
export PATH=$HOME/source/bash-lessons/scripts:$PATH
source "$HOME/.exports" # Load other vars
source "$HOME/.aliases"
source "$HOME/.functions"

if [[ -x "$(command -v dircolors)" ]]; then
  eval "$(dircolors)"
  alias ls='ls -F --color=auto'
else
  alias ls='ls -F'
fi

eval "$(ssh-agent -s)"

# https://powerline.readthedocs.io/en/latest/usage/shell-prompts.html#bash-prompt
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. "$python_dir/lib/python/site-packages/powerline/bindings/bash/powerline.sh"
