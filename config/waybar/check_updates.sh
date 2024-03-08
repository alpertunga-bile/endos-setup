#!/bin/bash

PACMAN_NUM_PACKAGES=$(pacman -Qu | wc -l)
# DEVEL_NUM_PACKAGES=$(yay -Qu --devel | wc -l) # it is slow

# NUM_PACKAGES=$(($PACMAN_NUM_PACKAGES + $DEVEL_NUM_PACKAGES))
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

exit 0
