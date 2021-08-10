# DWM dotfiles
## Welcome to my personal build of dwm

## The objective

This is a heavily patched version of the suckless dynamic window manager from the suckless team. It is intended to be a complete replacement for a desktop environment and completely usable as a daily driver for anything from programming to media editing to music production.

This repository exists mainly for my personal interest in being able to easily bootstrap a system when needed, but I figured others might want to use it as well.

## What is used/ the dependencies

- Blueberry for managing bluetooth

- Network Manager Applet as a frontend to the network manager application

- Picom as the compositor

- Polkit for managing privileged operations

- Unclutter for automatically hiding the cursor when inactive

- Volumeicon for ... you can make this one up

- Xrandr for multi-monitor setups

- Wmname set as LG3D to solve Java reparenting programs (for example in Intellij IDEA)

- Xfce4-notifyd for displaying notifications

- Xfce4-power-manager for battery info

- Xfce4-taskmanger as the task manager

My slstatus build is also included for cpu, battery, calendar and clock info.

## Included patches

- dwm-alphasystray
- dwm-autostart
- dwm-alwayscenter
- dwm-center
- dwm-r1615-selfstart
- dwm-cyclelayouts
- dwm-shiftview
- dwm-fullgaps
- dwm-viewontag
- dwm-wrap-6.2

## Installation

If you want to use this config it is theoretically enough to: 

```
git clone https://github.com/pedro-git-projects/pedro-dwm

cd pedro-dwm

cd dwm 

sudo make clean install

cd ..

cd slstatus 

sudo make clean install
```
However don't expect this to simply work. There are two catches:

1. The dependecies you just saw listed: without them you can expect some functionality to fail.

2. My autostart.sh : the way I patched dwm, it searches for the script at ~/.config/dwm this means you should cp my directory to you .config folder, else auto start won't work

Beyond that, make sure to either download the JoyPixels font or change the **static const char *fonts[]** variable at my **config.h**. 

Less essential but important as well is making sure you change the value attributed to the variables *filecmd, *termcd, *browser, *music, and  *code ant the **config.h** to your preferred applications before using my build.

