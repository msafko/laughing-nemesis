# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# source virtualenvwrapper
if [ -f "/usr/local/bin/virtualenvwrapper.sh" ] ; then
    export WORKON_HOME=$HOME/.virtualenvs
    export PROJECT_HOME=$HOME/apps
    export VIRTUALENVWRAPPER_VIRTUALENV="/usr/local/bin/virtualenv"
    export VIRTUALENVWRAPPER_LOG_DIR="$WORKON_HOME" 
    export VIRTUALENVWRAPPER_HOOK_DIR="$WORKON_HOME" 
    export VIRTUALENVWRAPPER_SCRIPT="/usr/local/bin/virtualenvwrapper.sh"
    #. "/usr/local/bin/virtualenvwrapper.sh"
fi

# source config if it exists
if [ -f "$HOME/etc/prod" ] ; then
    . "$HOME/etc/prod"
fi

# GitHub wrapper
eval "$(hub alias -s)"

# GoLang paths
export GOPATH="/usr/bin/go"
export GOROOT="/usr/bin/go"
