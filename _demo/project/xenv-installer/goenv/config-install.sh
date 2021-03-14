#!/usr/bin/env bash

set -e


################################################################################
### Head: goenv
##
goenv_config_install () {
	goenv_config_bashrc
}

goenv_config_is_exist_in_bashrc () {
	grep '### Head: goenv' "$HOME/.bashrc" -q
}

goenv_config_bashrc () {
	if goenv_config_is_exist_in_bashrc; then
		echo
		echo "Exist: goenv init script is exist in ~/.bashrc"
		echo
		echo "Check Command:"
		echo
		echo '	$ grep "### Head: goenv" "$HOME/.bashrc" -A 11 -B 1'
		return
	fi

	echo
	echo "cat ./config/goenv/bashrc.part.sh >> $HOME/.bashrc"
	cat "./config/goenv/bashrc.part.sh" >> "$HOME/.bashrc"

	## recover
	## cp "/etc/skel/.bashrc" "$HOME/.bashrc"
}

##
### Tail: goenv
################################################################################


################################################################################
### Head: main
##
main_config_install () {

	goenv_config_install

}
## start
main_config_install

##
### Tail: main
################################################################################
