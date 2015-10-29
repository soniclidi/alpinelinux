#!/bin/bash

rc-update add sshd
rc-status
touch /run/openrc/softlevel

if [ ! -f /.root_pw_set ]; then
	/set_root_pw.sh
fi

/etc/init.d/sshd start
