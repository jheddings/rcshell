# configure and load the local keychain agent

SSH_KEYCHAIN_ENV="$HOME/.keychain/$HOSTNAME-sh"
[ -f ${SSH_KEYCHAIN_ENV} ] && . ${SSH_KEYCHAIN_ENV}

