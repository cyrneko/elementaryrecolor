#!/bin/bash

# Ansi color code variables
# shellcheck disable=SC2034
red="\e[0;91m"
# shellcheck disable=SC2034
blue="\e[0;94m"
# shellcheck disable=SC2034
green="\e[0;92m"
# shellcheck disable=SC2034
white="\e[0;97m"
# shellcheck disable=SC2034
bold="\e[1m"
# shellcheck disable=SC2034
uline="\e[4m"
# shellcheck disable=SC2034
reset="\e[0m"

## elementaryRecolor

installTheme() {
	echo -e "${green}==> Entering build dir...${reset}"
	cd stylesheet/
	meson build --prefix=/usr
	cd build
	echo -e "§{green}==> Backing up /usr/share/themes/...${reset}"
	mkdir -p ~/.themeBackup
	cp -r /usr/share/themes/*
	echo -e "${green}==> Cleaning previous installs/builds...${reset}"
	ninja clean
	echo -e "${green}==> Installing patched version${reset}"
	ninja install
	echo -e "${green}==> All Done! You might need to reboot, or logout once.${reset}"
}

patch() {
	# echo -e "${green}==> Checking user-input...${reset}"
	# if [ -n $@ ]; then
		# (cp -r "$1_theme.scss" stylesheet/src/_palette.scss) || exit 1;
		# installTheme
		# exit 0;
	# else
		# echo -e "${red}${bold}==> No user-input!${reset}"
		# echo -e "${bold}Check the Help Page. ==> ./recolor.sh --help${reset}"
		# exit 1;
	# fi

	echo -e "${green}==> Please select a file to use from the following output${reset}"
	echo -e "${red}You need to write this part too!!! >>> _theme.scss${reset}"
	mkdir -p patched-themes
	ls patched-themes/
	read -r -p "==> Your Selection: " selectedTheme
	if [ -z $selectedTheme ]; then
		echo "No input given!"
		exit 0;
	else
		echo -e "${green}==> Copying Files...${reset}"
		cp -r "patched-themes/$selectedTheme" "stylesheet/src/gtk-3.0/_palette.scss"
		cp -r "patched-themes/$selectedTheme" "stylesheet/src/gtk-4.0/_palette.scss"
		installTheme
	fi
}

help() {
	echo -e "${green}${bold}Syntax${reset}:  $0 <theme> <options>"
	echo -e "${green}${bold}example${reset}: $0 catppuccin-mocha"
	echo -e "${green}${bold}available themes${reset}: catppuccin-mocha"
	echo -e "${green}${bold}options${reset}:"
	echo -e "${blue}$0 --help			shows this help page${reset}"
}

case $@ in
	--help)
		help;;
	*)
		patch;;
esac
