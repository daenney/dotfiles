#!/usr/bin/env fish
# Path to your oh-my-fish.
set fish_path $HOME/Development/github/oh-my-fish

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Example format: set fish_plugins autojump bundler
set fish_plugins brew bundler localhost pyenv rbenv python rake

# Path to your custom folder (default path is $FISH/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish
set fish_custom $HOME/.config/fish/custom

# Disable greeting
set fish_greeting

# User paths
set fish_user_paths /usr/local/sbin

# Custom env variables
set -x RBENV_ROOT /usr/local/var/rbenv
set -x PYENV_ROOT /usr/local/opt/pyenv
set -x EDITOR /usr/local/bin/vim
set -x HOMEBREW_NO_EMOJI true
set -x CAP_USER daniele.sluijters
set -x VIRTUALFISH_HOME $HOME/.virtualenv/envs

# MANPATH
set -x MANPATH /usr/local/share/man /usr/share/man /opt/x11/share/man

# Language
set -x LANGUAGE "en_GB:en"
set -x LANG "en_GB.UTF-8"
set -x LC_PAPER "nl_NL.UTF-8"
set -x LC_TIME "nl_NL.UTF-8"
set -x LC_MONETARY "nl_NL.UTF-8"

# Custom functions
function puppetdb
    ssh -NngfL 2222:vm0006:22 $argv
    ssh -NngfL 8080:localhost:8080 localhost -p 2222 -l $CAP_USER -i $HOME/.ssh/nedap.rsa.pub
end

# Virtualfish
source $HOME/Development/github/virtualfish/virtual.fish
source $HOME/Development/github/virtualfish/global_requirements.fish
function myfunc --on-event virtualenv_did_activate
    echo "Virtualenv" (basename $VIRTUAL_ENV) "activated"
end

# OMG Virtualbox
function vbox-idiot
    VBoxManage hostonlyif remove vboxnet0
    VBoxManage hostonlyif create
end

# Load oh-my-fish configuration.
source $fish_path/oh-my-fish.fish
