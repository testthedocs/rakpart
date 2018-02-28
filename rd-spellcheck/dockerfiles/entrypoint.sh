#!/bin/sh
set -e

#exec su-exec $@
# Re-set permission to the `sphinx` user
# This avoids permission denied if the data volume is mounted by root
chown -R sphinx /build
if [ -f "/build/docs/spelling_wordlist.txt" ]
then
    case "$1" in
        "spellcheck")
            exec su-exec sphinx make spellcheck
        "help")
            exec su-exec sphinx make help
            exit 0 ;;
        *)
            exec su-exec sphinx make help
            exit 0 ;;
    esac
else
    echo "Can't detect wordlist"
    exit 1
fi

