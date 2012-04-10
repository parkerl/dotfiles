# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="l3wp"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew rails3 bundler gem rvm parker)


source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/Users/parker/bin/:/Users/parker/scala/bin/:/usr/local/mysql/bin:/Users/parker/bin/instantclient_10_2:$PATH
export PATH=$PATH:/Users/parker/bin/:~/scala/bin/:/usr/local/mysql/bin
export NODE_PATH=$NODE_PATH:/usr/local/lib/node_modules

alias la='ls -a'
alias ll='ls -l'
alias ls="ls -G"
alias rs='rails s'
function code { cd ~/code/$1; }
function cdl { cd $1; ls;}
function lfind { ls -a | grep $1;}
function tfilter { tail -f $1 | grep $2; }
function ff { open -a /Applications/Firefox.app http://$1; }

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# Setting PATH for Python 3.2
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.2/bin:${PATH}"
export PATH
export SQLPATH="/Users/parker/bin/instantclient_10_2"
export NLS_LANG="AMERICAN_AMERICA.UTF8"
export PATH=$PATH:$DYLD_LIBRARY_PATH

export HBASE_HOME="/usr/local/Cellar/hbase/0.90.5/libexec"
function hbase { ${HBASE_HOME}/bin/hbase $1; }

alias vim='mvim -v'

export EDITOR='vim'
bindkey -v

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
HISTSIZE=10000
SAVEHIST=10000

export CDPATH=$CDPATH:~/code
