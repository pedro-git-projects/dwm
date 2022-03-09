#/bin/bash

function layout {
	options="us\nbr"
	selected=$(echo -e $options | dmenu -nb \#282828 -nf \#EBDBB2 -sb \#BB7548 -sf \#1D2021)
	if [[ $selected = "us" ]]; then
		setxkbmap us
	elif [[ $selected = "br" ]]; then
		setxkbmap br
	fi
}

layout
