#! /bin/sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done


polybar eDP-1-Left & polybar eDP-1-Center & polybar eDP-1-Right & polybar eDP-1-Bottom-Left & polybar eDP-1-Bottom-Center & polybar eDP-1-Bottom-Right &


if [[ $(xrandr -q | grep 'HDMI-1 connected') ]]; then
	polybar HDMI-1-Left & polybar HDMI-1-Center & polybar HDMI-1-Right & polybar HDMI-1-Bottom-Left & polybar HDMI-1-Bottom-Center & polybar HDMI-1-Bottom-Right &



fi

