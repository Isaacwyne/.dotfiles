#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# wait until the processes have been shutdown
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

echo "---" | tee -a /tmp/polybar1.log
polybar main 2>&1 | tee -a /tmp/polybar1.log & disown
