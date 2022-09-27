#!/bin/bash
export SWAYSOCK=/run/user/$(id -u)/sway-ipc.$(id -u).$(pgrep -x sway).sock
export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/$(id -u)/bus"
export WAYLAND_DISPLAY=wayland-1

sleep 1
notify-send -a System -t 20000 "SoloKey unplugged - Locking"
/bin/swaylock-blur
exit
