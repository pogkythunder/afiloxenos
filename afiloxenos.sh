#!/bin/bash
# shellcheck disable=SC1091
# shellcheck disable=SC2154

source "$HOME"/.afiloxenos/lang.sh

function box_out()
{
	printf " %s " "$(tput setaf 6)${arr[RANDOM%${#arr[@]}+0]}$(tput sgr0)"| boxes -d stone -p a2v1
}

box_out "${arr[@]}"
echo -e "\n"

