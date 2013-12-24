# git isn't always stored in /usr/bin

if [ -d /usr/local/git ] ; then
  export PATH="/usr/local/git/bin:$PATH"
fi
