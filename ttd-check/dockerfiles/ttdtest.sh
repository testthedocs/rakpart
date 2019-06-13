#!/bin/sh

set -e



# lattest commit
LATEST_COMMIT=$(git rev-parse HEAD)

# latest commit where path/to/folder1 was changed
FOLDER1_COMMIT=$(git log -1 --format=format:%H --full-diff docs)

# latest commit where path/to/folder2 was changed
#FOLDER2_COMMIT=$(git log -1 --format=format:%H --full-diff path/to/folder2)

if [ $FOLDER1_COMMIT = $LATEST_COMMIT ];
    then
        echo "files in foo have changed"
        :
    else
	echo "no folders of relevance has changed"
     	exit 0;
fi

# Check if we have a index.rst, if not exit
file="docs/index.rst"
if [ -f "$file" ]
then
    :
    exit 0
else
    printf "\\033[1;31mCan't detect a index.rst, please make sure you have one!\\033[0m\\n"
    printf "\\033[1;31mStopping now ...\\033[0m\\n"
    exit 1
fi

