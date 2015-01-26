#!/bin/bash

files="passwd shadow group gshadow"

for f in $files; do
  docker cp samba4:/etc/$f files/etc/
done
