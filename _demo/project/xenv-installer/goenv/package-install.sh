#!/usr/bin/env bash

set -e


################################################################################
### Head: rebenv
##
goenv_clone_repo () {
	if [ -d "$HOME/.goenv" ]; then
		echo
		echo "Exist: $HOME/.goenv"
		return
	fi

	## https://github.com/syndbg/goenv

	## clone
	echo
	echo "git clone https://github.com/syndbg/goenv.git $HOME/.goenv"
	git clone "https://github.com/syndbg/goenv.git" "$HOME/.goenv"
}

goenv_init_script_install () {
	mkdir -p "$HOME/app/goenv"

	echo
	echo "cp ./config/goenv/init.sh $HOME/app/goenv/init.sh"
	cp "./config/goenv/init.sh" "$HOME/app/goenv/init.sh"
}
##
### Tail: rebenv
################################################################################


################################################################################
### Head: main
##
main_package_install () {
	goenv_clone_repo
	goenv_init_script_install
}

main_package_install
##
### Tail: main
################################################################################
