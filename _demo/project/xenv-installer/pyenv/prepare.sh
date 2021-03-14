#!/usr/bin/env bash

set -e


################################################################################
### Head: util_prepare
##
util_prepare_find_list () {
	local file_path="$1"
	cat $file_path  | while IFS='' read -r line; do
		trim_line=$(echo $line) # trim

		## https://www.gnu.org/software/bash/manual/html_node/Shell-Parameter-Expansion.html
		## ignore leading #
		if [ "${trim_line:0:1}" == '#' ]; then
			continue;
		fi

		## ignore empty line
		if [[ -z "$trim_line" ]]; then
			continue;
		fi

		echo "$line"
	done
}

main_prepare_find_list () {
	util_prepare_find_list "prepare-list.txt"
}

main_prepare_find_list_raw () {
	cat "prepare-list.txt"
}
##
### Tail: util_prepare
################################################################################


################################################################################
### Head: main
##
main_prepare_install () {
	# sudo apt-get install $(cat prepare-list.txt)
	# sudo apt-get install $(main_prepare_find_list_raw)
	sudo apt-get install $(main_prepare_find_list)
}

main_prepare_install
##
### Tail: main
################################################################################
