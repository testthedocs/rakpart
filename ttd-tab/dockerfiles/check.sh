#!/bin/bash
set -eo pipefail

# Vars
ESC_SEQ="\x1b["
COL_RESET=$ESC_SEQ"39;49;00m"
COL_YELLOW=$ESC_SEQ"33;01m"
COL_RED=$ESC_SEQ"31;01m"
COL_GREEN=$ESC_SEQ"32;01m"

# Functions
# Error
error_exit() {
  echo -en "$COL_RED$1$COL_RESET" 1>&2
  exit 1
}

check_tabs() {
  #if grep --color -nP "\t" index.rst
  #if grep -nP "\t" index.rst | awk -F: '{print $2":"$1}'
  if grep --include=*.md --include=*.rst -inrP "\t" . | awk -F: '{ print "\033[1;32m" $1 "\033[0m"":""\033[1;33m" $2 "\033[0m" }'; then
    echo -en "$COL_RED It seems there are tabs!$COL_RESET\n"
    #grep --include=*.md -irnP "\t" . | awk -F: '{ print "\033[1;32m" $1 "\033[0m"":""\033[1;33m" $2 "\033[0m" }'
    echo -en "$COL_YELLOW Syntax: filename:line $COL_RESET\n"
    echo -en "$COL_YELLOW Thank you ! $COL_RESET\n"
    exit 1
  else
    echo -en "$COL_GREEN Looks good ! :)$COL_RESET\n"
  fi
}

testing_it() {
  grep --include=*.md -irP "\t" . | awk -F: '{ print "\033[1;32m" $1 "\033[0m"":""\033[1;33m" $2 "\033[0m" }'
}

echo -en "$COL_YELLOW Checking for tabs...$COL_RESET\n"
check_tabs
#testing_it
