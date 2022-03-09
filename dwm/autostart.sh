#!/bin/bash

function run {
 if ! pgrep $1 ;
  then
    $@&
  fi
}

# Render on multiple monitors, change depending on you xrarandr -q output
run "xrandr --auto --output HDMI2 --mode 1920x1080 --rate 60  --right-of eDP1"
run "nm-applet"
run "cbatticon"
run "xfce4-power-manager"
#run "blueman-applet"
run "/usr/lib/xfce4/notifyd/xfce4-notifyd"
run "/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1"
picom --config ~/.config/dwm/picom.conf & 
run "numlockx on"
run "volctl"
run slstatus &
run "wmname LG3D"
run "unclutter"
run keepassxc &
# run "/opt/ivpn/ui/bin/ivpn-ui"
run "feh --bg-fill /home/pedro/Pictures/wallpapers/arch_gruvbox.png --bg-fill /home/pedro/Pictures/wallpapers/gruvbox_linux.png"
# run setxkbmap us
#run "spotify-tray"
