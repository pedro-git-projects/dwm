#!/bin/bash

function run {
 if ! pgrep $1 ;
  then
    $@&
  fi
}

# Render on multiple monitors, change depending on you xrarandr -q output
run "xrandr --auto --output HDMI-1-0 --mode 1920x1080 --right-of eDP1"

run "nm-applet"
run "xfce4-power-manager"
run "blueberry-tray"
run "/usr/lib/xfce4/notifyd/xfce4-notifyd"
run "/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1"
picom --config ~/.config/dwm/picom.conf & 
run "numlockx on"
run "volumeicon"
run slstatus &
run "nitrogen --restore"
run "wmname LG3D"
run "unclutter"

