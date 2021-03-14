#!/usr/bin/env bash

set -e


################################################################################
### Head: rbenv
##
rbenv_config_install () {
	rbenv_config_bashrc
}

rbenv_config_is_exist_in_bashrc () {
	grep '### Head: rbenv' "$HOME/.bashrc" -q
}

rbenv_config_bashrc () {
	if rbenv_config_is_exist_in_bashrc; then
		echo
		echo "Exist: rbenv init script is exist in ~/.bashrc"
		echo
		echo "Check Command:"
		echo
		echo '	$ grep "### Head: rbenv" "$HOME/.bashrc" -A 11 -B 1'
		return
	fi

	echo
	echo "cat ./config/rbenv/bashrc.part.sh >> $HOME/.bashrc"
	cat "./config/rbenv/bashrc.part.sh" >> "$HOME/.bashrc"

	## recover
	## cp "/etc/skel/.bashrc" "$HOME/.bashrc"
}

##
### Tail: rbenv
################################################################################


################################################################################
### Head: main
##
main_config_install () {

	rbenv_config_install

}
## start
main_config_install

##
### Tail: main
################################################################################
