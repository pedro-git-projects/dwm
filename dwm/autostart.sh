#!/bin/bash

function run {
 if ! pgrep $1 ;
  then
    $@&
  fi
}

# Render on multiple monitors, change depending on you "xrarandr -q" output
run "xrandr --auto --output HDMI-1-0 --mode 1920x1080 --rate 60  --right-of eDP-1"
# Network manager
run "nm-applet"
# Power manager
run "xfce4-power-manager"
# Bluetooth applet
run "blueman-applet"
# Notification deamon
run "/usr/lib/xfce4/notifyd/xfce4-notifyd"
# Authentication agent
run "/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1"
# Compositor
picom --config ~/.config/dwm/picom.conf &
# Numlock on display manager 
run "numlockx on"
# Volume manager
run "volctl"
# Suckless status manger
run slstatus &
# Fixes java reparenting is software such as Intellij
run "wmname LG3D"
# Hides cursor after a short period of time
run "unclutter"
# Password manager
run keepassxc &
# Render wallpaper
run "feh --bg-fill /home/pedro/Pictures/wallpapers/ouroboros.jpg --bg-fill /home/pedro/Pictures/wallpapers/hell.png"
# Sets keyboard map
run setxkbmap us
