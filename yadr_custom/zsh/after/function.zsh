function aa {
  echo "alias $1='$2'" >> ~/code/personal_settings/yadr_custom/zsh/after/alias.zsh 
  sort -o ~/code/personal_settings/yadr_custom/zsh/after/alias.zsh ~/code/personal_settings/yadr_custom/zsh/after/alias.zsh 
}

function ah {
  cmnd=$( history | tail -1 | cut -c 8-1000 )
  echo "alias $1='$cmnd'" >> ~/code/personal_settings/yadr_custom/zsh/after/alias.zsh 
  sort -o ~/code/personal_settings/yadr_custom/zsh/after/alias.zsh ~/code/personal_settings/yadr_custom/zsh/after/alias.zsh 
}
function ff { open -a /Applications/Firefox.app http://$1; }
function hbase { ${HBASE_HOME}/bin/hbase $1; }
function lfind { ls -a | grep $1;}
function tfilter { tail -f $1 | grep $2; }
function wtf {echo 'ALIAS:'; alias | grep $1; echo 'WHICH: '; which $1; echo 'FUNCTIONS: '; functions | egrep -o '^([a-zA-Z])+\W*\(' | grep $1 }
function zzap { zmv "*$1*" ** }
function zsub { zmv "*$1*" "*$2*" }
function zflip { 'zmv' "(*)($1)(*)($2)(*)" '$1$4$3$2$5' }
