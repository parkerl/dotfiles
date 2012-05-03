setopt auto_cd
export CDPATH=$CDPATH:~/code
# Fancy globbing http://linuxshellaccount.blogspot.com/2008/07/fancy-globbing-with-zsh-on-linux-and.html
setopt extendedglob
export COMMAND_MODE=unix2003
unalias ps
bindkey -M viins 'jk' vi-cmd-mode
bindkey -M viins '^O' copy-prev-shell-word
bindkey -M viins '^L' push-line
bindkey -M viins '^T' transpose-words
export DYLD_LIBRARY_PATH="/Users/parker/bin/instantclient_10_2"
export SQLPATH="/Users/parker/bin/instantclient_10_2"
export NLS_LANG="AMERICAN_AMERICA.UTF8"
export PATH=$PATH:$DYLD_LIBRARY_PATH
export ORACLE_HOME="/Users/parker/bin/instantclient_10_2"
