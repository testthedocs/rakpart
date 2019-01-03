#!/bin/sh
set -eo pipefail

#exec su-exec $@
# Re-set permission to the `ttduser` user
# This avoids permission denied if the data volume is mounted by root
chown -R ttd /srv
#exec gosu ttd htmltest -c /srv/.htmltest.yml
exec gosu ttd htmltest
