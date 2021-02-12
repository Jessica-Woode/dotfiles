#!/bin/bash
my_laptop_external_monitor=$(xrandr --query | grep 'DP2-3')
if [[ $my_laptop_external_monitor = *connected* ]]; then
    xrandr --output eDP1 --primary --mode 1600x900 --rotate normal --output DP2-3 --mode 1440x900 --rotate normal --right-of eDP1
fi

