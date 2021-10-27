#/bin/bash

function layout {
	options="us\nbr"
	selected=$(echo -e $options | dmenu)
	if [[ $selected = "us" ]]; then
		setxkbmap us
	elif [[ $selected = "br" ]]; then
		setxkbmap br
	fi
}

layout
