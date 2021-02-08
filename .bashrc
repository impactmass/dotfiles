#!/bin/bash

python_dir=$HOME/Library/Python/2.7
export PATH=/opt/local/bin:$PATH
export ZSH=/Users/seun/.oh-my-zsh
export PATH=/usr/local/share/npm/bin:$PATH
export PATH=$python_dir/bin/:$PATH                          # pip executable
export PATH=/usr/local/opt/make/libexec/gnubin:$PATH
export PATH="$(brew --prefix)/opt/make/libexec/gnubin:$PATH" # ? same as next one?
export PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH # Path GNU core utilities installed with brew
export PATH=$HOME/source/bash-lessons/scripts:$PATH

export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/php@7.2/bin:$PATH"
export PATH="/usr/local/opt/php@7.2/sbin:$PATH"

# redis
export PATH="/usr/local/opt/redis@4.0/bin:$PATH"

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

# nvm commented out due to clash with volta
# export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# git completion
if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash

    # Add git completion to aliases
    __git_complete gco _git_checkout
fi
