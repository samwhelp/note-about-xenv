#!/usr/bin/env bash

set -e


################################################################################
### Head: pyenv
##
pyenv_config_install () {
	pyenv_config_bashrc
}

pyenv_config_is_exist_in_bashrc () {
	grep '### Head: pyenv' "$HOME/.bashrc" -q
}

pyenv_config_bashrc () {
	if pyenv_config_is_exist_in_bashrc; then
		echo
		echo "Exist: pyenv init script is exist in ~/.bashrc"
		echo
		echo "Check Command:"
		echo
		echo '	$ grep "### Head: pyenv" "$HOME/.bashrc" -A 11 -B 1'
		return
	fi

	echo
	echo "cat ./config/pyenv/bashrc.part.sh >> $HOME/.bashrc"
	cat "./config/pyenv/bashrc.part.sh" >> "$HOME/.bashrc"

	## recover
	## cp "/etc/skel/.bashrc" "$HOME/.bashrc"
}

##
### Tail: pyenv
################################################################################


################################################################################
### Head: main
##
main_config_install () {

	pyenv_config_install

}
## start
main_config_install

##
### Tail: main
################################################################################
