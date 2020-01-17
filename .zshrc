export PATH=/opt/local/bin:$PATH
export ZSH=/Users/seun/.oh-my-zsh
export PATH=/usr/local/share/npm/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=~/Library/Python/2.7/bin/:$PATH # pip executable
export PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH # GNU core utilities installed with brew

# npm pkg dir
NPM_PACKAGES="$HOME/.npm-packages"
PATH="$NPM_PACKAGES/bin:$PATH"

# I like: cobalt2, ys
ZSH_THEME="ys"

#plugins
plugins=(git extract node npm bower)

# User configuration
source $ZSH/oh-my-zsh.sh

eval "$(ssh-agent -s)"

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

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Load other vars
source $HOME/.exports
