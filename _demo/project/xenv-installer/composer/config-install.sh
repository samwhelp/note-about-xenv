#!/usr/bin/env bash

set -e


################################################################################
### Head: composer
##
composer_config_install () {
	composer_config_bashrc
}

composer_config_is_exist_in_bashrc () {
	grep '### Head: composer' "$HOME/.bashrc" -q
}

composer_config_bashrc () {
	if composer_config_is_exist_in_bashrc; then
		echo
		echo "Exist: composer init script is exist in ~/.bashrc"
		echo
		echo "Check Command:"
		echo
		echo '	$ grep "### Head: composer" "$HOME/.bashrc" -A 8 -B 1'
		return
	fi

	echo
	echo "cat ./config/composer/bashrc.part.sh >> $HOME/.bashrc"
	cat "./config/composer/bashrc.part.sh" >> "$HOME/.bashrc"

	## recover
	## cp "/etc/skel/.bashrc" "$HOME/.bashrc"
}

##
### Tail: composer
################################################################################


################################################################################
### Head: main
##
main_config_install () {

	composer_config_install

}
## start
main_config_install

##
### Tail: main
################################################################################
