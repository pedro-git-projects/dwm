#!/usr/bin/env bash
	connected=$(xrandr | grep -c " connected ")
	if [[  $connected -gt 1 ]]; then
        for monitor in /home/pedro/.scripts/monitor.sh; do
            exec ./monitor.sh
        done
    fi
