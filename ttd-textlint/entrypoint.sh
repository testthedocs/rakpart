#!/bin/sh
set -e

# Check if we have a coafile
# Check if .coafile exists
#if [[ ! -f .coafile ]]; then
#    msg ".coafile doesn't exist," \
#        "Running coala-quickstart to create one ..."
#
#fi



#exec su-exec $@
# Re-set permission to the `sphinx` user
# This avoids permission denied if the data volume is mounted by root
chown -R textlintuser /srv
exec su-exec textlintuser textlint -c /srv/.textlintrc "$@"
