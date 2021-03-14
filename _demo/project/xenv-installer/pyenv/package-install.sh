#!/usr/bin/env bash

set -e


################################################################################
### Head: pyenv
##
pyenv_clone_repo () {
	if [ -d "$HOME/.pyenv" ]; then
		echo
		echo "Exist: $HOME/.pyenv"
		return
	fi

	## https://github.com/pyenv/pyenv

	## clone
	echo
	echo "git clone https://github.com/pyenv/pyenv.git $HOME/.pyenv"
	git clone "https://github.com/pyenv/pyenv.git" "$HOME/.pyenv"
}

pyenv_update_repo () {
	if [ -d "$HOME/.pyenv/plugins/pyenv-update" ]; then
		echo
		echo "Exist: $HOME/.pyenv/plugins/pyenv-update"
		return
	fi

	## https://github.com/pyenv/pyenv-update

	## clone
	echo
	echo "git clone https://github.com/pyenv/pyenv-update.git $HOME/.pyenv/plugins/pyenv-update"
	git clone "https://github.com/pyenv/pyenv-update.git" "$HOME/.pyenv/plugins/pyenv-update"

}



pyenv_init_script_install () {
	mkdir -p "$HOME/app/pyenv"

	echo
	echo "cp ./config/pyenv/init.sh $HOME/app/pyenv/init.sh"
	cp "./config/pyenv/init.sh" "$HOME/app/pyenv/init.sh"
}
##
### Tail: pyenv
################################################################################


################################################################################
### Head: main
##
main_package_install () {
	pyenv_clone_repo
	pyenv_update_repo
	pyenv_init_script_install
}

main_package_install
##
### Tail: main
################################################################################
