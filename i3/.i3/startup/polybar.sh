#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done


PRIMARY_MONITOR=$(xrandr --query | grep " connected" | grep "primary" | cut -d" " -f1)
OTHER_MONITORS=$(xrandr --query | grep " connected" | grep -v "primary" | cut -d" " -f1)

# Launch on primary monitor
MONITOR=$PRIMARY_MONITOR polybar --reload top -r&
sleep 1

# Launch on all other monitors
for monitor in $OTHER_MONITORS; do
 MONITOR=$monitor polybar --reload top -r&
done