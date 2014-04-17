if [ -f "/usr/bin/pass-sshaskpass" ] ; then
	SSH_ASKPASS="/usr/bin/ssh-pass-integration"
	export SSH_ASKPASS
    alias ssh="setsid ssh"
fi
