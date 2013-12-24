# rcshell - bashrc entry point

# to use this configuration, source this file from your .bashrc:
# . $HOME/.rcshell/bashrc

# source global definitions (TODO make optional?)
[ -f /etc/bashrc ] && . /etc/bashrc

################################################################################
# configuration variables, override in $HOME/.bashrc
# TODO only set if not set previously

#export JAVA_HOME=/usr/local/tools/java/default
#export ANT_HOME=/usr/local/tools/ant/default
#export ELDK_HOME=/usr/local/tools/eldk/default
export CDP_BASE="$HOME/Projects"

# end configuration
################################################################################

# TODO make this folder dynamic from this file
RCDIR=$HOME/.rcshell/bashrc.d

# source all files from RCDIR
if [ -d $RCDIR ] ; then
  for rc in $RCDIR/*.bashrc ; do
    . $rc
  done
fi

