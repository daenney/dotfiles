path=($HOME/.rbenv/bin /usr/local/share/python /usr/local/sbin /usr/local/bin $HOME/Development/github/dotfiles/bin /opt/X11/bin $path)
typeset -U PATH
# virtualenv
WORKON_HOME=$HOME/.virtualenvs
PROJECT_HOME=$HOME/Development/python
VIRTUALENVWRAPPER_VIRTUALENV_ARGS="--no-site-packages"
VIRTUALENVWRAPPER_BITBUCKET_USER=daenney
VIRTUALENV_USE_DISTRIBUTE=1

alias vim="mvim"

export LANGUAGE="en_GB:en"
export LANG="en_GB.UTF-8"
export LC_ALL="nl_NL.UTF-8"
export LC_CTYPE="UTF-8"
export LC_MESSAGES="en_GB.UTF-8"

export CAP_USER="daniele.sluijters"

eval "$(rbenv init -)"
