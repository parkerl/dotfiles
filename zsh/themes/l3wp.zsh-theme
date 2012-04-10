PROMPT='%{$fg[magenta]%}LOCAL%{$reset_color%} at %{$fg_bold[green]%}${PWD/#$HOME/~}%{$reset_color%} $(git_cwd_info.rb)
$(prompt_char) '

RPROMPT=''

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%})%{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '±' && return
    hg root >/dev/null 2>/dev/null && echo '☿' && return
    echo '○'
}

function who_is_here {
  who | cut -c 1-9 | grep -v parker | sed 's/ *$//g' | sed  's/$/ is here/g' 
}

function zle-line-init zle-keymap-select {
    RPS1="${${KEYMAP/vicmd/-N-}/(main|viins)/-I-}%{$fg_bold[red]%} $(who_is_here)%{$reset_color%}"
    RPS2=$RPS1
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select
