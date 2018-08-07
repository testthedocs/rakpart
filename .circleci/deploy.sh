#!/usr/bin/env bash
set -e # halt script on error

echo "packing"
zip -r website.zip ~/build/html/build/site/
echo "done with zip"

NETLIFY_SITE_NAME=pedantic-ritchie-166766/

echo " lets start with uploading"

curl -H "Content-Type: application/zip" \
     -H "Authorization: Bearer $NETLIFYKEY" \
     --data-binary "@website.zip" \
     https://api.netlify.com/api/v1/sites/$NETLIFY_SITE_NAME/deploys
