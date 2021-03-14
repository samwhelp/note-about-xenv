#!/usr/bin/env bash

set -e


################################################################################
### Head: composer
##

composer_check_php () {
	#if ! command -v php > /dev/null; then
	#	sudo apt-get install php-cli
	#fi

	if ! type -p php > /dev/null; then
		echo
		echo "sudo apt-get install php-cli"
		sudo apt-get install php-cli
	fi

}

composer_download_phar () {
	if [ -a "$HOME/bin/composer" ]; then
		echo
		echo "Exist: $HOME/bin/composer"

		echo
		echo "Please remove it frist:"

		echo
		echo '	$ rm $HOME/bin/composer'

		echo
		echo 'or'

		echo
		echo '	$ mv $HOME/bin/composer $HOME/bin/composer.bak'

		echo
		exit 0
	fi

	## https://getcomposer.org/download/

	## Version
	#THE_COMPOSER_URL="https://getcomposer.org/download/2.0.11/composer.phar" ## 2.0.11
	THE_COMPOSER_URL="https://getcomposer.org/composer-stable.phar" ## Latest Stable
	#THE_COMPOSER_URL="https://getcomposer.org/composer-preview.phar" ## Latest Preview
	#THE_COMPOSER_URL="https://getcomposer.org/composer.phar" ## Latest Snapshot
	#THE_COMPOSER_URL="https://getcomposer.org/composer-1.phar" ## Latest 1.x
	#THE_COMPOSER_URL="https://getcomposer.org/composer-2.phar" ## Latest 2.x

	## Download

	echo
	echo "wget -c $THE_COMPOSER_URL -O $HOME/bin/composer"
	echo
	wget -c "$THE_COMPOSER_URL" -O $HOME/bin/composer

	echo
	echo "chmod u+x $HOME/bin/composer"
	echo
	chmod u+x "$HOME/bin/composer"
}


composer_update () {
	echo
	echo "$HOME/bin/composer self-update"
	"$HOME/bin/composer" self-update
}

composer_show_version () {
	echo
	echo "composer --version"
	"$HOME/bin/composer" --version
	#composer --version
}


##
### Tail: composer
################################################################################


################################################################################
### Head: main
##
main_package_install () {
	composer_check_php
	composer_download_phar
	composer_update
	composer_show_version
}

main_package_install
##
### Tail: main
################################################################################
