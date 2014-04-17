if [ -f "/usr/bin/ssh-pass-integration" ] ; then
	SSH_ASKPASS="/usr/bin/ssh-pass-integration"
	export SSH_ASKPASS
    alias ssh="setsid ssh"
fi
