#!/usr/bin/env bash
# Check Files in list from file exist or doesn't exist in directory.

#set -e

# Vars
ESC_SEQ="\x1b["
COL_RESET=$ESC_SEQ"39;49;00m"
COL_YELLOW=$ESC_SEQ"33;01m"
COL_RED=$ESC_SEQ"31;01m"

# Functions
# Error
error_exit() {
	echo -en "$COL_RED$1$COL_RESET" 1>&2
	exit 1
}

echo -en "$COL_YELLOW Running repository setup checks ...$COL_RESET\n"
echo ""
CHECK_FILES='VERSION README.rst CHANGES.rst'
for i in $CHECK_FILES
do
if [ ! -f "$i" ]; then
    echo -en "$COL_RED Cannot detect $i $COL_RESET\n"
fi
done
exit 1
