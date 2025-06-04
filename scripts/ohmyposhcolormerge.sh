#! /bin/bash
. "$HOME/.cache/wal/colors.sh"

sed -e "s/BACKGROUND_P/${background}/" -e "s/FOREGROUND_P/${foreground}/" -e "s/COLOR_1/${color1}/" -e "s/COLOR_2/${color2}/" -e"s/COLOR_3/${color3}/" $HOME/dotfiles/.config/ohmyposh/ohmyposhtemplate.json > $HOME/dotfiles/.config/ohmyposh/ohmyposhconfig.json
