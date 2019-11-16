################################################################################
# completes possible matches for targets in a local build.xml file
ant-complete () {
  if [ ! -f "build.xml" ] ; then return 1 ; fi
  COMPREPLY=($( \
    egrep '<target[^>]*name="'${COMP_WORDS[$COMP_CWORD]} build.xml \
    | sed 's/^.*name="\([^"]*\).*$/\1/' \
  ))
}

# setup custom completion
complete -F ant-complete -o filenames ant ombuild
