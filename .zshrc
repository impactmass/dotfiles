# Path to your oh-my-zsh installation.
export ZSH=/Users/seunmartins/.oh-my-zsh
export PATH=/usr/local/share/npm/bin:$PATH
export PATH=/usr/local/bin:$PATH

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# i like: robbyrussell, cobalt2, jnrowe, mgutz, sunrise.zsh-theme (previous)
ZSH_THEME="cobalt2"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# include z
. /usr/local/Cellar/z/1.8/etc/profile.d/z.sh

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git extract node npm bower brew cloudapp)

# User configuration

# export PATH="/Users/seunmartins/.rvm/gems/ruby-2.1.5/bin:/Users/seunmartins/.rvm/gems/ruby-2.1.5@global/bin:/Users/seunmartins/.rvm/rubies/ruby-2.1.5/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/seunmartins/.rvm/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh
memcached -d -m 24 -p 11211
eval "$(ssh-agent -s)"
nvm use v6.9.1
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

PATH=/opt/local/bin:$PATH
export PATH=/Users/seunmartins/mongodb/mongodb-osx-x86_64-3.2.4/bin:$PATH
