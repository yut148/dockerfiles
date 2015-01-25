#!/bin/bash
docker run --privileged --volumes-from samba-data -d -it -p 137:137 -p 138:138 -p 139:139 -p 445:445 --name samba samba:0.6
