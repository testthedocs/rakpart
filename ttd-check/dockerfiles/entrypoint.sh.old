#!/bin/sh
set -e



#exec su-exec $@
# Re-set permission to the `ttd` user
# This avoids permission denied if the data volume is mounted by root
exec su-exec ttd make "$@"

