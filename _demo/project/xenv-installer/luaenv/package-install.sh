#!/usr/bin/env bash

set -e


################################################################################
### Head: luaenv
##
luaenv_clone_repo () {
	if [ -d "$HOME/.luaenv" ]; then
		echo
		echo "Exist: $HOME/.luaenv"
		return
	fi

	## https://github.com/cehoffman/luaenv

	## clone
	echo
	echo "git clone https://github.com/cehoffman/luaenv.git $HOME/.luaenv"
	git clone "https://github.com/cehoffman/luaenv.git" "$HOME/.luaenv"
}

luaenv_build_clone_repo () {
	if [ -d "$HOME/.luaenv/plugins/lua-build" ]; then
		echo
		echo "Exist: $HOME/.luaenv/plugins/lua-build"
		return
	fi

	## https://github.com/cehoffman/lua-build

	## clone
	echo
	echo "git clone https://github.com/cehoffman/lua-build.git $HOME/.luaenv/plugins/lua-build"
	git clone "https://github.com/cehoffman/lua-build.git" "$HOME/.luaenv/plugins/lua-build"

}

luaenv_luarocks_clone_repo () {
	if [ -d "$HOME/.luaenv/plugins/luaenv-luarocks" ]; then
		echo
		echo "Exist: $HOME/.luaenv/plugins/luaenv-luarocks"
		return
	fi

	## https://github.com/xpol/luaenv-luarocks

	## clone
	echo
	echo "git clone https://github.com/xpol/luaenv-luarocks.git $HOME/.luaenv/plugins/luaenv-luarocks"
	git clone "https://github.com/xpol/luaenv-luarocks.git" "$HOME/.luaenv/plugins/luaenv-luarocks"

}

luaenv_init_script_install () {
	mkdir -p "$HOME/app/luaenv"

	echo
	echo "cp ./config/luaenv/init.sh $HOME/app/luaenv/init.sh"
	cp "./config/luaenv/init.sh" "$HOME/app/luaenv/init.sh"
}
##
### Tail: luaenv
################################################################################


################################################################################
### Head: main
##
main_package_install () {
	luaenv_clone_repo
	luaenv_build_clone_repo
	luaenv_luarocks_clone_repo
	luaenv_init_script_install
}

main_package_install
##
### Tail: main
################################################################################
