#!/bin/sh

BASE=$(dirname "$0")

mkdir -p $BASE/profiles/
mkdir -p $BASE/profiles/polyconfs/

if [ "$1" == "" ]; then
	echo "Usage: $0 <PROFILE>"
	echo "Profiles are located in $BASE/profiles/"
	echo "Available profiles:"
	echo "$(ls $BASE/profiles/ | grep '.*\.profile')"
else
	PROFILE="$1"
	source $BASE/profiles/$PROFILE
	ln -sf -T "$wallpaper" $BASE/profiles/wallpaper
	cp "$statusbar" ~/.config/polybar/config
fi
