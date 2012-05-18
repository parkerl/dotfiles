setopt auto_cd
export CDPATH=$CDPATH:~/code
# Fancy globbing http://linuxshellaccount.blogspot.com/2008/07/fancy-globbing-with-zsh-on-linux-and.html
setopt extendedglob
export COMMAND_MODE=unix2003
zle -N vi-kill-line-and-insert
bindkey -M viins 'jj' vi-cmd-mode
bindkey -M vicmd 'dd' vi-kill-line-and-insert
bindkey -M vicmd 'k' history-beginning-search-backward
bindkey -M vicmd 'j' history-beginning-search-forward 
bindkey -M viins '^O' copy-prev-shell-word
bindkey -M vicmd '^O' copy-prev-shell-word
bindkey -M viins '^L' push-line
bindkey -M vicmd '^L' push-line
bindkey -M viins '^T' transpose-words
bindkey -M vicmd '^T' transpose-words
bindkey -M vicmd '^r' history-incremental-search-backward
export DYLD_LIBRARY_PATH="/Users/parker/bin/instantclient_10_2"
export SQLPATH="/Users/parker/bin/instantclient_10_2"
export NLS_LANG="AMERICAN_AMERICA.UTF8"
export PATH=$PATH:$DYLD_LIBRARY_PATH
export ORACLE_HOME="/Users/parker/bin/instantclient_10_2"
source ~/.dirstack
eval "$(fasd --init auto)"
