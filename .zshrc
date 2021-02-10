# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/sm/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

export PATH="/usr/local/opt/node@14/bin:$PATH"
export PATH=/opt/local/bin:$PATH
export PATH="/usr/local/sbin:$PATH"
export PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH # Path GNU core utilities installed with brew

source "$HOME/.exports" # Load vars
source "$HOME/.aliases"
source "$HOME/.functions"

if [[ -x "$(command -v dircolors)" ]]; then
    eval "$(dircolors)"
    alias ls='ls -F --color=auto'
else
    alias ls='ls -F'
fi

# eval "$(ssh-agent -s)" # keep to reference when needed
