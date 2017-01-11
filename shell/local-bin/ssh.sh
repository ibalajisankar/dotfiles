#!/bin/bash
# http://askubuntu.com/questions/87956/can-you-set-passwords-in-ssh-config-to-allow-automatic-login
# Host foohost
    #User root
    #Password foobarpassword
#
host=$1
password=`awk "/#Password/ && inhost { print \\\$2 } /Host/ { inhost=0 } /Host $host/ { inhost=1 }" ~/.ssh/config`

if [[ -z "$password" ]]; then
  /usr/bin/ssh $*
else
  sshpass -p $password /usr/bin/ssh $*
fi