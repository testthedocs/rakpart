#!/bin/bash
set -euo pipefail

# Re-set permission to the `ttd` user
# This avoids permission denied if the data volume is mounted by root
chown -R ttd /build
exec su-exec ttd /usr/local/bin/check.sh
