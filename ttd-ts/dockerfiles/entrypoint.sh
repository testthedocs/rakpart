#!/bin/bash
set -e

# Vars
ESC_SEQ="\x1b["
COL_RESET=$ESC_SEQ"39;49;00m"
COL_YELLOW=$ESC_SEQ"33;01m"
COL_RED=$ESC_SEQ"31;01m"

# Check if we have a index.rst or index.md, if not exit
RST="/build/docs/index.rst"
MD="/build/docs/index.md"

if [ -f "$MD" ]
then
    :
elif [ -f "$RST" ]
then
    :
else
    echo -en "$COL_RED Can't detect a index, please make sure you have one! $COL_RESET\n"
    echo -en "$COL_RED Stopping now... $COL_RESET\n"
    echo -en "$COL_RED Thank you ! $COL_RESET\n"
    exit 1
fi

#exec su-exec $@
# Re-set permission to the `ttd` user
# This avoids permission denied if the data volume is mounted by root
chown -R ttd /build
exec su-exec ttd /usr/local/bin/check.sh

