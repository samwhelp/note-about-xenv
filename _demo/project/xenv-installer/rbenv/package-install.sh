#!/usr/bin/env bash

set -e


################################################################################
### Head: rebenv
##
rbenv_clone_repo () {
	if [ -d "$HOME/.rbenv" ]; then
		echo
		echo "Exist: $HOME/.rbenv"
		return
	fi

	## https://github.com/rbenv/rbenv

	## clone
	echo
	echo "git clone https://github.com/rbenv/rbenv.git $HOME/.rbenv"
	git clone "https://github.com/rbenv/rbenv.git" "$HOME/.rbenv"
}

rbenv_build_clone_repo () {
	if [ -d "$HOME/.rbenv/plugins/ruby-build" ]; then
		echo
		echo "Exist: $HOME/.rbenv/plugins/ruby-build"
		return
	fi

	## https://github.com/rbenv/ruby-build

	## clone
	echo
	echo "git clone https://github.com/rbenv/ruby-build.git $HOME/.rbenv/plugins/ruby-build"
	git clone "https://github.com/rbenv/ruby-build.git" "$HOME/.rbenv/plugins/ruby-build"

}

rbenv_init_script_install () {
	mkdir -p "$HOME/app/rbenv"

	echo
	echo "cp ./config/rbenv/init.sh $HOME/app/rbenv/init.sh"
	cp "./config/rbenv/init.sh" "$HOME/app/rbenv/init.sh"
}
##
### Tail: rebenv
################################################################################


################################################################################
### Head: main
##
main_package_install () {
	rbenv_clone_repo
	rbenv_build_clone_repo
	rbenv_init_script_install
}

main_package_install
##
### Tail: main
################################################################################
