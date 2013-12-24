# $Id: cdp.bashrc 8 2009-05-27 19:55:58Z jheddings $

[ -z "$CDP_BASE" ] && export CDP_BASE=$HOME
[ -z "$CDP_DEPTH" ] && export CDP_DEPTH=1

################################################################################
# performs a search for a directory
cdp () {
  if [ -z "$1" ] ; then
    cd $CDP_BASE && return 0
  fi
  local dir=$(cdp-find $1)
  if [ -n "$dir" -a -d "$dir" ] ; then
    cd $dir
    if [ -n "$CDP_TRUNK" -a -d "$CDP_TRUNK" ] ; then
      cd "${CDP_TRUNK}"
    fi
    if [ -d ".svn" ] ; then
      cdp-svn-info
    fi
    return 0
  else
    echo "cdp: $1: No such file or directory"
    return 1
  fi
}

################################################################################
# shows SVN info use by cdp
cdp-svn-info () {
  local url=`svn info | grep '^URL' | awk '{ print $2 }'`
  local rev=`svn info | grep '^Revision' | awk '{ print $2 }'`
  echo "[SVN] $url @ $rev"
}

################################################################################
# performs completion for the cdp command
cdp-complete () {
  COMPREPLY=($(cdp-find "${COMP_WORDS[$COMP_CWORD]}*" | awk -F/ '{ print $NF }'))
}

################################################################################
# performs the cdp find command for a given param
cdp-find () {
  find $CDP_BASE -maxdepth $CDP_DEPTH \
    -name .svn -prune \
    -o -name "__*" -prune \
    -o -name "*~" -prune \
    -o -name ".*" -prune \
    -o -name tags -prune \
    -o -name trunk -prune \
    -o -name vendor -prune \
    -o -name branches -prune \
    -o -type d -name "$1*" \
    -print \
  | sort | uniq
}

# setup custom completion
complete -F cdp-complete cdp
