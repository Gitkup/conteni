#!/bin/sh

sh "$(dirname "$0")/check.sh"
if [ $? -eq 0 ]; then

cd "$(dirname "$0")"
ruby "version.rb"
#sh $(git pull $(jq -r '.repo' "config.json"))

fi
