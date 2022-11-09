#! /bin/sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done


polybar eDP-1 &

if [[ $(xrandr -q | grep 'HDMI-1 connected') ]]; then
	polybar HDMI-1 &
fi

