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
		eval "notify-send $i 'GitHub'"
	done;
	sleep 1m
done
