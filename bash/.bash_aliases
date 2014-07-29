alias cl="clear"
alias wd="watch -d ls -trlh"
alias fa="cd ~/freezing-avenger/"
alias fai="pip install ~/freezing-avenger"
alias fas="vim ~/freezing-avenger/setup.py"
alias tmux="tmux -2"

eval "$(hub alias -s)"

function lt() { ls -trlsa "$@" | tail; }
function psgrep() { ps auxf | grep -v grep | grep "$@" -i --color=auto; }
function fname() { find . -iname "*$@"; }
