#!/bin/sh

sh "$(dirname "$0")/check.sh"
if [ $? -eq 0 ]; then

cd "$(dirname "$0")"
ruby "version.rb"
echo "new version test"

sleep $(jq -r '.period' "config.json")
git pull
clear
sh start.sh

fi
