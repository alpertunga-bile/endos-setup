#!/bin/bash

PACMAN_NUM_PACKAGES=$(checkupdates | wc -l)
YAOURT_NUM_PACKAGES=$(yay -Qua | wc -l)

NUM_PACKAGES=$((PACMAN_NUM_PACKAGES + $YAOURT_NUM_PACKAGES))

case $NUM_PACKAGES in
	0)
		echo "0 packages"
		;;
	1)
		echo "1 package"
		;;
	*)
		echo "$NUM_PACKAGES packages"
		;;
esac
