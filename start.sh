#!/bin/sh

sh "$(dirname "$0")/check.sh"
if [ $? -eq 0 ]; then

ruby "$(dirname "$0")/version.rb"
sh $(git pull $(jq -r '.repo' "config.json"))

fi
