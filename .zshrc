# Path to your oh-my-zsh installation.
PATH=/opt/local/bin:$PATH
export ZSH=/Users/seunmartins/.oh-my-zsh
export PATH=/usr/local/share/npm/bin:$PATH
export PATH=/usr/local/bin:$PATH

# i like: cobalt2, ys
ZSH_THEME="ys"
HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"

# include z
. /usr/local/Cellar/z/1.9/etc/profile.d/z.sh

#plugins
plugins=(git extract node npm bower)

# User configuration
source $ZSH/oh-my-zsh.sh
eval "$(ssh-agent -s)"
nvm use v7.4.0
# You may need to manually set your language environment
# export LANG=en_US.UTF-8

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

HISTSIZE=SAVEHIST=100000
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

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
