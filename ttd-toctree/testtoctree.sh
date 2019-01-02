#!/bin/bash
set -euxo pipefail

# Functions
check_index() {
  if [ ! -f index.rst ]; then
    echo -e "\e[1;31mCan not find a index.rst \e[0m"
    exit 1
  else
    : # Do nothing and move on
  fi
}

# First make sure that we have a index.rst
check_index

# Check for nested toctrees
echo -e "\e[1mChecking for nested toctree entries \e[21m"
ag --rest -F :numbered: --ignore index.rst
if [ $? -eq 1 ]; then
  :
  echo -e "\e[1;92mLooks great ! Awesome ! \e[0m"
  exit 0
else
  echo -e "\e[1;31mFound one or more numbering entry, ':numbered:' is only allowed once in index.rst \e[0m"
  exit 1
fi
exit 0
