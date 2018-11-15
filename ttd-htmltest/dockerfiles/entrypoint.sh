#!/bin/sh
set -e

#exec su-exec $@
# Re-set permission to the `ttduser` user
# This avoids permission denied if the data volume is mounted by root
chown -R ttduser /build
exec gosu ttduser htmltest -c /build/.htmltest.yml

