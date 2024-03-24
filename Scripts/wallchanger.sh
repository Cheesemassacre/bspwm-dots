#!/bin/sh
while true; do 
shuf -e -n1 ~/Pictures/Wallpapers/* | xargs feh --bg-scale
sleep 300;
done
