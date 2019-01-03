#!/bin/sh
set -eo pipefail

# Re-set permission to the `ttd` user
# This avoids permission denied if the data volume is mounted by root
chown -R ttd /srv
#exec su-exec ttd vale "$@"
exec su-exec ttd vale /srv/tests
