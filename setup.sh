#!/bin/bash

echo -e "Which language would you like to install?\n1. Greek 0. Uninstall\n>_"
read -r lang

mkdir "$HOME"/.afiloxenos
cd "$HOME"/.afiloxenos || exit
wget https://raw.githubusercontent.com/pogkythunder/afiloxenos/main/afiloxenos.sh
sudo chmod +777 afiloxenos.sh

case $lang in
	1)
		cd "$HOME"/.afiloxenos || exit
		wget https://raw.githubusercontent.com/pogkythunder/afiloxenos/main/greek.sh
		sudo chmod +777 greek.sh
		echo "$PWD/afiloxenos.sh" >> "$HOME"/.bashrc
		mv greek.sh lang.sh
		source $HOME/.bashrc
		;;

	0)
		sed -i "/afiloxenos/d" "$HOME"/.bashrc
		rm -r "$HOME"/.afiloxenos
		;;
esac
