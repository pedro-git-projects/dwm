#/bin/bash

# Dracula
# background=\#282a36
# unselected=\#f8f8f2
# highlight=\#bd93f9
# foreground=\#f8f8f2

# Gruvbox
background=\#282828
unselected=\#EBDBB2
highlight=\#BB7548
foreground=\#1D2021

function layout {
	options="us\nbr"
	selected=$(echo -e $options | dmenu -nb $background -nf $unselected -sb $highlight -sf $foreground)
	if [[ $selected = "us" ]]; then
		setxkbmap us
	elif [[ $selected = "br" ]]; then
		setxkbmap br
	fi
}

layout
