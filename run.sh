#!/bin/bash

if [ ! -f /.root_pw_set ]; then
	sh /set_root_pw.sh
fi

rc-status
touch /run/openrc/softlevel
ssh-keygen -A

exec /usr/sbin/sshd -D
