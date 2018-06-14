export PATH=/opt/local/bin:$PATH
export ZSH=/Users/seunmartins/.oh-my-zsh
export PATH=/usr/local/share/npm/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=~/Library/Python/3.6/bin/:$PATH # pip executable

# Path GNU core utilities installed with brew
export PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH


# I like: cobalt2, ys
ZSH_THEME="ys"

#plugins
plugins=(git extract node npm bower)

# User configuration
source $ZSH/oh-my-zsh.sh

eval "$(ssh-agent -s)"

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

setopt sharehistory
setopt extendedhistory
setopt auto_cd
setopt interactivecomments # pound sign in interactive prompt

REPORTTIME=10

if [[ -x "`whence -p dircolors`" ]]; then
  eval `dircolors`
  alias ls='ls -F --color=auto'
else
  alias ls='ls -F'
fi

# import aliases
source $HOME/.aliases

# Reaction sp
export REACTION_USER="Seun Martins"
export REACTION_AUTH=seunmartins
export REACTION_EMAIL=seun@reactioncommerce.com
