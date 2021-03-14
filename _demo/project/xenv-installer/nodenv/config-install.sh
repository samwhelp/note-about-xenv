#!/usr/bin/env bash

set -e


################################################################################
### Head: nodenv
##
nodenv_config_install () {
	nodenv_config_bashrc
}

nodenv_config_is_exist_in_bashrc () {
	grep '### Head: nodenv' "$HOME/.bashrc" -q
}

nodenv_config_bashrc () {
	if nodenv_config_is_exist_in_bashrc; then
		echo
		echo "Exist: nodenv init script is exist in ~/.bashrc"
		echo
		echo "Check Command:"
		echo
		echo '	$ grep "### Head: nodenv" "$HOME/.bashrc" -A 11 -B 1'
		return
	fi

	echo
	echo "cat ./config/nodenv/bashrc.part.sh >> $HOME/.bashrc"
	cat "./config/nodenv/bashrc.part.sh" >> "$HOME/.bashrc"

	## recover
	## cp "/etc/skel/.bashrc" "$HOME/.bashrc"
}

##
### Tail: nodenv
################################################################################


################################################################################
### Head: main
##
main_config_install () {

	nodenv_config_install

}
## start
main_config_install

##
### Tail: main
################################################################################
