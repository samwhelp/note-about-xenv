#!/usr/bin/env bash

set -e


################################################################################
### Head: nodenv
##
nodenv_clone_repo () {
	if [ -d "$HOME/.nodenv" ]; then
		echo
		echo "Exist: $HOME/.nodenv"
		return
	fi

	## https://github.com/nodenv/nodenv

	## clone
	echo
	echo "git clone https://github.com/nodenv/nodenv.git $HOME/.nodenv"
	git clone "https://github.com/nodenv/nodenv.git" "$HOME/.nodenv"
}

nodenv_build_clone_repo () {
	if [ -d "$HOME/.nodenv/plugins/node-build" ]; then
		echo
		echo "Exist: $HOME/.nodenv/plugins/node-build"
		return
	fi

	## https://github.com/nodenv/node-build

	## clone
	echo
	echo "git clone https://github.com/nodenv/node-build.git $HOME/.nodenv/plugins/node-build"
	git clone "https://github.com/nodenv/node-build.git" "$HOME/.nodenv/plugins/node-build"

}

nodenv_update_clone_repo () {
	if [ -d "$HOME/.nodenv/plugins/nodenv-update" ]; then
		echo
		echo "Exist: $HOME/.nodenv/plugins/nodenv-update"
		return
	fi

	## https://github.com/nodenv/nodenv-update

	## clone
	echo
	echo "git clone https://github.com/nodenv/nodenv-update.git $HOME/.nodenv/plugins/nodenv-update"
	git clone "https://github.com/nodenv/nodenv-update.git" "$HOME/.nodenv/plugins/nodenv-update"

}


nodenv_init_script_install () {
	mkdir -p "$HOME/app/nodenv"

	echo
	echo "cp ./config/nodenv/init.sh $HOME/app/nodenv/init.sh"
	cp "./config/nodenv/init.sh" "$HOME/app/nodenv/init.sh"
}
##
### Tail: nodenv
################################################################################


################################################################################
### Head: main
##
main_package_install () {
	nodenv_clone_repo
	nodenv_build_clone_repo
	nodenv_update_clone_repo
	nodenv_init_script_install
}

main_package_install
##
### Tail: main
################################################################################
