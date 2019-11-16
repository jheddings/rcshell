# rcshell - bashrc entry point

# to use this configuration, source this file from your .bashrc:
# . $HOME/.rcshell/bashrc

export CDP_BASE="$HOME/Projects"

# TODO make this folder dynamic from this file
RCDIR=$HOME/.rcshell/bashrc.d

# source all files from RCDIR
if [ -d $RCDIR ] ; then
  for rc in $RCDIR/*.bashrc ; do
    . $rc
  done
fi

