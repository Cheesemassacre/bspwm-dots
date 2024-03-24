#!/bin/bash

st_window=$(xdotool search --class st-256color | tail -1)
bspc node $st_window -g hidden=on