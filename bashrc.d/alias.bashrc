# $Id: alias.bashrc 7 2009-03-07 21:47:29Z jheddings $

# setup 'ls'
#alias l='/bin/ls -hF --color=never'
alias l='/bin/ls -hF'
alias ll='l -l'
alias la='l -a'
alias lla='l -la'

alias tree='/usr/bin/tree -nF'

alias rm='/bin/rm -i'
alias cp='/bin/cp -i'
alias mv='/bin/mv -i'

alias tip='/usr/bin/sudo minicom -o'

alias bk='/bin/echo && /bin/echo && /bin/echo ================================================================================'

alias g='gvim'

# TODO 'e' should check for a running vim server and use that, else launch vim
#alias e='vim --servername VIM --remote'
alias e='vim'

# create a simple web server in the current directory
alias wserv='python -m SimpleHTTPServer 8008'

