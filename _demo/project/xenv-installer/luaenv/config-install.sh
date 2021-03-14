#!/usr/bin/env bash

set -e


################################################################################
### Head: luaenv
##
luaenv_config_install () {
	luaenv_config_bashrc
}

luaenv_config_is_exist_in_bashrc () {
	grep '### Head: luaenv' "$HOME/.bashrc" -q
}

luaenv_config_bashrc () {
	if luaenv_config_is_exist_in_bashrc; then
		echo
		echo "Exist: luaenv init script is exist in ~/.bashrc"
		echo
		echo "Check Command:"
		echo
		echo '	$ grep "### Head: luaenv" "$HOME/.bashrc" -A 11 -B 1'
		return
	fi

	echo
	echo "cat ./config/luaenv/bashrc.part.sh >> $HOME/.bashrc"
	cat "./config/luaenv/bashrc.part.sh" >> "$HOME/.bashrc"

	## recover
	## cp "/etc/skel/.bashrc" "$HOME/.bashrc"
}

##
### Tail: luaenv
################################################################################


################################################################################
### Head: main
##
main_config_install () {

	luaenv_config_install

}
## start
main_config_install

##
### Tail: main
################################################################################
