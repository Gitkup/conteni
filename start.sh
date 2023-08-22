#!/bin/sh

sh "$(dirname "$0")/check.sh"
if [ $? -eq 0 ]; then

cd "$(dirname "$0")"
ruby "version.rb"
sleep 2
git pull
clear
sh start.sh

fi
