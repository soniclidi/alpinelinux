#!/bin/bash

rc-update add sshd
rc-status
touch /run/openrc/softlevel

if [ ! -f /.root_pw_set ]; then
	sh /set_root_pw.sh
fi

/etc/init.d/sshd start
while true;do sleep 1;done
