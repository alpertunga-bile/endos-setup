#!/bin/bash

PACMAN_NUM_PACKAGES=$(checkupdates | wc -l)

NUM_PACKAGES=$PACMAN_NUM_PACKAGES

case $NUM_PACKAGES in
	0)
		echo "No packages are available"
		;;
	1)
		echo "1 package is available"
		;;
	*)
		echo "$NUM_PACKAGES packages are available"
		;;
esac
