# virtualenv
WORKON_HOME=$HOME/.virtualenvs
PROJECT_HOME=$HOME/Development
VIRTUALENVWRAPPER_VIRTUALENV_ARGS="--no-site-packages"
VIRTUALENVWRAPPER_BITBUCKET_USER=daenney
VIRTUALENV_USE_DISTRIBUTE=1

alias ack="ack -iC --sort-files"

export LANGUAGE="en_GB:en"
export LANG="en_GB.UTF-8"
export LC_CTYPE="UTF-8"
export LC_PAPER="nl_NL.UTF-8"
export LC_TIME="nl_NL.UTF-8"
export LC_MONETARY="nl_NL.UTF-8"

export EDITOR=vim

export CAP_USER="daniele.sluijters"
export ANDROID_SDK_ROOT="/usr/local/Cellar/android-sdk/r21.1"
export DEBMAIL="Daniele Sluijters <daniele.sluijters@gmail.com>"

export RBENV_ROOT=/usr/local/var/rbenv
export HOMEBREW_NO_EMOJI=true
path=(/usr/local/share/python /usr/local/sbin /usr/local/bin /opt/X11/bin $path)
typeset -U PATH
