#!/bin/bash

if [ "$1" == "" ]; then
	echo "You should provide 'username:token'"
	exit 1
fi

for (( ; ; ))
do
	curl -u $1 https://api.github.com/notifications | \
	jq '.[] | { title: .subject.title }.title' | \
	while read i;
	do
		# without icon
		# eval "notify-send $i 'GitHub'"
		eval "notify-send $i 'GitHub' -i Octocat"
	done;
	sleep 1m
done
