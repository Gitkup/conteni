#!/bin/sh

# ensure all dependencies are resolved
sh "$(dirname "$0")/check.sh"
if [ $? -eq 0 ]; then

# change the working directory to conteni's
cd "$(dirname "$0")"

# print version
ruby "version.rb"
echo "Ctrl + C to quit"

# compare changes since last update
ruby "compare.rb"

# archive and update
sleep $(jq -r '.period' "config.json")
ruby "archive.rb"
git pull
clear
sh start.sh

fi
