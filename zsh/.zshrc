
















# COMPLETION_WAITING_DOTS="true"
# Comment this out to disable weekly auto-update checks
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Customize to your needs...
# DISABLE_AUTO_TITLE="true"
# DISABLE_AUTO_UPDATE="true"
# DISABLE_LS_COLORS="true"
# Example format: plugins=(rails git textmate ruby lighthouse)
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# Path to your oh-my-zsh configuration.
# Set name of the theme to load.
# Setting PATH for Python 3.2
# The orginal version is saved in .bash_profile.pysave
# Uncomment following line if you want red dots to be displayed while waiting for completion
# Uncomment following line if you want to disable autosetting terminal title.
# Uncomment following line if you want to disable colors in ls
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# time that oh-my-zsh is loaded.
HISTSIZE=10000
PATH="/Library/Frameworks/Python.framework/Versions/3.2/bin:${PATH}"
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
SAVEHIST=10000
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="l3wp"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
alias la='ls -a'
alias ll='ls -l'
alias ls="ls -G"
alias rs='rails s'
alias vim='mvim -v'
bindkey -v
export CDPATH=$CDPATH:~/code
export EDITOR='vim'
export HBASE_HOME="/usr/local/Cellar/hbase/0.90.5/libexec"
export NLS_LANG="AMERICAN_AMERICA.UTF8"
export NODE_PATH=$NODE_PATH:/usr/local/lib/node_modules
export PATH
export PATH=$PATH:$DYLD_LIBRARY_PATH
export PATH=$PATH:/Users/parker/bin/:~/scala/bin/:/usr/local/mysql/bin
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/Users/parker/bin/:/Users/parker/scala/bin/:/usr/local/mysql/bin:/Users/parker/bin/instantclient_10_2:$PATH
export SQLPATH="/Users/parker/bin/instantclient_10_2"
function cdl { cd $1; ls;}
function code { cd ~/code/$1; }
function ff { open -a /Applications/Firefox.app http://$1; }
function hbase { ${HBASE_HOME}/bin/hbase $1; }
function lfind { ls -a | grep $1;}
function tfilter { tail -f $1 | grep $2; }
plugins=(git brew rails3 bundler gem rvm parker)
source $ZSH/oh-my-zsh.sh
