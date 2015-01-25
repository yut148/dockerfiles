#!/bin/bash

while read user; do
  if [ "" = "${user}" ]; then
    continue
  fi

  id $user > /dev/null 2>&1
  if [ $? != 0 ]; then
    useradd $user
  fi

  homedir=/share/home/$user

  if [ ! -e $homedir ]; then
    mkdir $homedir
    chown $user. $homedir
    chmod 700 $homedir
  fi
done < /root/userlist
