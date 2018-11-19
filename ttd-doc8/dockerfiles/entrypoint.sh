#!/bin/bash
set -e

#exec su-exec $@
# Re-set permission to the `ttd` user
# This avoids permission denied if the data volume is mounted by root
chown -R ttd /srv
exec su-exec ttd doc8 --max-line-length=180
