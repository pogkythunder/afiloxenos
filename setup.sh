#!/bin/bash

read -rp $'Which language would you like to install?\x0a1. Greek 0. Uninstall\x0a>_' lang


case $lang in
	1)
		mkdir "$HOME"/.afiloxenos
		cd "$HOME"/.afiloxenos || exit
		wget https://raw.githubusercontent.com/pogkythunder/afiloxenos/main/afiloxenos.sh
		sudo chmod +777 afiloxenos.sh
		wget https://raw.githubusercontent.com/pogkythunder/afiloxenos/main/greek.sh
		sudo chmod +777 greek.sh
		echo "$PWD/afiloxenos.sh" >> "$HOME"/.bashrc
		mv greek.sh lang.sh
		# shellcheck disable=SC1091
		source "$HOME"/.bashrc
		;;

	0)
		sed -i "/afiloxenos/d" "$HOME"/.bashrc
		rm -r "$HOME"/.afiloxenos
		;;
esac
