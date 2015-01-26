#!/bin/bash
./user_export.sh
docker stop samba4 && docker rm samba4
