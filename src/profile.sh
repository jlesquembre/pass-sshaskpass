shopt -s expand_aliases
if [ -f "/usr/bin/pass-sshaskpass" ] ; then
	SSH_ASKPASS="/usr/bin/pass-sshaskpass"
	export SSH_ASKPASS
    alias ssh="setsid ssh"
fi
