autoload -U colors && colors
plugins=(parker $plugins)
setopt auto_cd
setopt pushd_ignore_dups
export CDPATH=$CDPATH:~/code
# Fancy globbing http://linuxshellaccount.blogspot.com/2008/07/fancy-globbing-with-zsh-on-linux-and.html
setopt extendedglob
export COMMAND_MODE=unix2003
bindkey -sM vicmd 'ciw' 'bcw'
bindkey -sM vicmd "ci'" "T'ct'"
bindkey -sM vicmd 'ci"' 'T"ct"'
bindkey -sM vicmd 'ci/' 'T/ct/'
bindkey -sM vicmd 'diw' 'bdw'
bindkey -sM vicmd "di'" "T'dt'"
bindkey -sM vicmd 'di"' 'T"dt"'
bindkey -sM vicmd 'diw' 'bdw'
bindkey -sM vicmd "da'" "F'df'"
bindkey -sM vicmd 'da"' 'F"df"'
bindkey -sM vicmd 'da/' 'F/df/'
bindkey -sM vicmd 'da/' 'F/df/'
bindkey -M viins 'jj' vi-cmd-mode
bindkey -M vicmd 'dd' vi-kill-line-and-insert
bindkey -M vicmd 'ci[' vi-change-inside-bracket
bindkey -M vicmd 'ci]' vi-change-inside-bracket
bindkey -M vicmd 'ci{' vi-change-inside-curly
bindkey -M vicmd 'ci}' vi-change-inside-curly
bindkey -M vicmd "ci'" vi-change-inside-quote
bindkey -M vicmd '  ' vi-end-of-line
bindkey -M vicmd 'k' history-beginning-search-backward
bindkey -M vicmd 'j' history-beginning-search-forward
bindkey -M viins '^O' copy-prev-shell-word
bindkey -M vicmd '^O' copy-prev-shell-word
bindkey -M viins '^L' push-line
bindkey -M vicmd '^L' push-line
bindkey -M viins '^T' transpose-words
bindkey -M vicmd '^T' transpose-words
bindkey -M vicmd '^r' history-incremental-search-backward
eval "$(fasd --init auto)"
export DIRSTACKSIZE=10
zstyle ':completion:*' hosts off
setopt hist_ignore_space
export EDITOR=vim
go_libs="-lm"
go_flags="-g -Wall -include allheaders.h -O3"
alias go_c="c99 -xc '-' $go_libs $go_flags"
bindkey '^X^A' fasd-complete    # C-x C-a to do fasd-complete (fils and directories)
bindkey '^X^F' fasd-complete-f  # C-x C-f to do fasd-complete-f (only files)
bindkey '^X^D' fasd-complete-d  # C-x C-d to do fasd-complete-d (only directories))

prompt lewp
