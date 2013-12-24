# .bashrc

# source global definitions
[ -f /etc/bashrc ] && . /etc/bashrc

# setup some HOME's
#export JAVA_HOME=/usr/local/tools/java/default
#export ANT_HOME=/usr/local/tools/ant/default
#export ELDK_HOME=/usr/local/tools/eldk/default

export CDP_BASE="$HOME/Projects"

# source all files from .bashrc.d if it exists
export BASHRC_D="$HOME/.bashrc.d"

if [ -d $BASHRC_D ] ; then
  for rc in $BASHRC_D/*.bashrc ; do
    . $rc
  done
fi
