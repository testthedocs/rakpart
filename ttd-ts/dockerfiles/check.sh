#!/bin/bash
set -e

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


check_tabs() {
    if ag -t -c -l ' \n'
    then
        echo -en "$COL_RED It seems there are trailing spaces!$COL_RESET\n"
        echo -en "$COL_RED See above filename and number of issues $COL_RESET\n"
        echo -en "$COL_RED Syntax: filename:issues $COL_RESET\n"
        echo -en "$COL_RED Thank you ! $COL_RESET\n"
        exit 1
    else
        echo -en "$COL_YELLOW Looks good ! :)$COL_RESET\n"
    fi
}

#exec su-exec $@
# Re-set permission to the `ttd` user
# This avoids permission denied if the data volume is mounted by root
echo -en "$COL_YELLOW Checking for trailing spaces at line ends...$COL_RESET\n"
check_tabs
#ag -t -c -l ' \n'
