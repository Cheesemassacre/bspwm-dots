#!/bin/bash

last_hidden=$(bspc query -N -n .hidden | tail -n 1)
bspc node $last_hidden -g hidden=off