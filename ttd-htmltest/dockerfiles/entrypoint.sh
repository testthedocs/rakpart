#!/bin/sh
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
# Re-set permission to the `ttduser` user
# This avoids permission denied if the data volume is mounted by root
chown -R ttduser /build
exec gosu ttduser htmltest -c /build/.htmltest.yml

