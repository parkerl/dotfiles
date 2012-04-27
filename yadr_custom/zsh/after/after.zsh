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
