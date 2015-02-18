#!/bin/bash
# Author: Thomas Backlund, some forest, Sweden.
# See LICENSE file.
# Inspired by http://tuxradar.com/content/xdotool-script-your-mouse
#
# How to use:
# ./mouse.sh [right|left|up|down|click|click_m|click_r] [pixels]
# Examples:
#   ./mouse.sh up 33        # Moves mouse pointer 33 pixels upwards
#   ./mouse.sh click        # Simulates a left click
#


function noxdotool {
    echo "xdotool is missing, please install it." >&2
    echo "Ubuntu: sudo apt-get install xdotool" >&2
    echo "Arch: sudo pacman -S xdotool" >&2
    exit 1
}

function help {
    echo "Usage: $0 [right|left|up|down|click|click_m|click_r] [pixels]"
    echo "Example:: $0 up 33"
    echo "Example:: $0 click"
    exit
}

command -v xdotool >/dev/null 2>&1 || noxdotool

action=$1

if [ "$action" = "" ];
then
    help
fi

px=${2:-33}

if [ "$action" = "right" ];
then
    xdotool mousemove_relative --sync $px 0
elif [ "$action" = "left" ];
then
    xdotool mousemove_relative --sync -- -$px 0
elif [ "$action" = "up" ];
then
    xdotool mousemove_relative --sync -- 0 -$px
elif [ "$action" = "down" ];
then
    xdotool mousemove_relative --sync 0 $px
elif [ "$action" = "click" ];
then
    xdotool click 1
elif [ "$action" = "click_m" ];
then
    xdotool click 2
elif [ "$action" = "click_r" ];
then
    xdotool click 3
fi
