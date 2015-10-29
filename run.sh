#!/bin/bash

rc-update add sshd
rc-status
touch /run/openrc/softlevel
/etc/init.d/sshd start
