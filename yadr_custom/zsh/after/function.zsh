function aa {
  echo "creating: alias $1='$2' #$3"
  echo "alias $1='$2' #$3" >> ~/code/personal_settings/yadr_custom/zsh/after/alias.zsh
  sort -o ~/code/personal_settings/yadr_custom/zsh/after/alias.zsh ~/code/personal_settings/yadr_custom/zsh/after/alias.zsh
}

function ah {
  cmnd=$( history | tail -1 | cut -c 8-1000 )
  echo "alias $1='$cmnd' # $2" >> ~/code/personal_settings/yadr_custom/zsh/after/alias.zsh
  sort -o ~/code/personal_settings/yadr_custom/zsh/after/alias.zsh ~/code/personal_settings/yadr_custom/zsh/after/alias.zsh
}
function ff { open -a /Applications/Firefox.app http://$1; }
function hbase { ${HBASE_HOME}/bin/hbase $1; }
function lfind { ls -a | grep $1;}
function tfilter { tail -f $1 | grep $2; }
function wtf {echo 'ALIAS:'; alias | grep $1; echo 'WHENCE: '; whence -vm "*${1}*";}
function zzap { zmv "*$1*" ** }
function zsub { zmv "*$1*" "*$2*" }
function zflip { 'zmv' "(*)($1)(*)($2)(*)" '$1$4$3$2$5' }
function vi-kill-line-and-insert { zle .kill-whole-line;  zle .vi-insert}
zle -N vi-kill-line-and-insert
function vi-change-inside-bracket { zle .vi-match-bracket; zle -U 'lct]'}
zle -N vi-change-inside-bracket
function vi-change-inside-curly { zle .vi-match-bracket; zle -U 'lct}'}
zle -N vi-change-inside-curly
function vi-change-inside-quote { zle -U "F'lct'"}
zle -N vi-change-inside-quote
function goxmp {
  args=$*
  echo ${(qq)args}
  #echo ${(qq)$* # =>} | xmpfilter
}
