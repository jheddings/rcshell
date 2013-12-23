# $Id: prompt.bashrc 4 2009-01-22 15:42:16Z jheddings $

if [ "$TERM" == "xterm" ] ; then
  export PS1='\[\e]2;\w\a\][\u@\h \W]\$ '
else
  export PS1='[\u@\h \W]\$ '
fi
