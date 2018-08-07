#!/bin/bash
set -e



# Check if we have a index.rst, if not exit
#file="/build/docs/index.rst"
#if [ -f "$file" ]
#then
#    :
#else
#    echo "Can't detect a index.rst, please make sure you have one!"
#    echo "Stopping now..."
#    exit 1
#fi


#exec su-exec $@
# Re-set permission to the `ttd` user
# This avoids permission denied if the data volume is mounted by root
chown -R ttd /build
exec su-exec ttd /usr/local/bin/check.sh
