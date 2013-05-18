# Path to your oh-my-zsh configuration.
ZSH=$HOME/Development/github/oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="sorin"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(brew capistrano django git github mercurial osx pip python rbenv virtualenvwrapper zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

function diff {
    colordiff -u "$@" | most
}

alias gitlog='git whatchanged'
fpath=(/usr/local/share/zsh-completions $fpath)
# The rbenv plugin sets RBENV_ROOT to /usr/local/opt/rbenv but
# the Homebrew formula says /usr/local/var/rbenv
export RBENV_ROOT=/usr/local/var/rbenv
