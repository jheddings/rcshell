# rcshell - zshrc entry point

# to use this configuration, source this file from your .bashrc:
# . $HOME/.rcshell/zshrc

export CDP_BASE="$HOME/Projects"

# TODO make this folder dynamic from this file
RCDIR=$HOME/.rcshell/zshrc.d

# source all files from RCDIR
if [ -d $RCDIR ] ; then
  for rc in $RCDIR/*.zshrc ; do
    source $rc
  done
fi

