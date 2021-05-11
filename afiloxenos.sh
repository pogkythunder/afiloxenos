#!/bin/bash

function box_out()
{
	printf " %s " "$(tput setaf 6)${arr[RANDOM%${#arr[@]}+0]}"$(tput sgr0)| boxes -d stone -p a2v1
}


source $HOME/.afiloxenos/lang.sh

box_out "${arr[@]}"
echo -e "\n"

