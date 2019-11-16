# make sure /usr/local is first in PATH
export PATH="/usr/local/bin:${PATH}"

# look for common "home" variables being set
[ -n "${JAVA_HOME}" ] && export PATH="${JAVA_HOME}/bin:${PATH}"
[ -n "${ANT_HOME}" ] && export PATH="${ANT_HOME}/bin:${PATH}"
[ -n "${ELDK_HOME}" ] && export PATH="${ELDK_HOME}/bin:${PATH}"
[ -n "${OMTOOLS_HOME}" ] && export PATH="${OMTOOLS_HOME}/bin:${PATH}"

[ -d "${HOME}/.scripts" ] && export PATH="${HOME}/.scripts:${PATH}"
