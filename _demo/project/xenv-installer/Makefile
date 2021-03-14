default: help
.PHONY: default

help:
	@echo 'Usage:'
	@echo '	$$ make [action]'
	@echo
	@echo 'Example:'
	@echo '	$$ make'
	@echo '	$$ make help'
	@echo
	@echo '	$$ make all-install'
	@echo
	@echo '	$$ make rbenv-install'
	@echo
	@echo '	$$ make pyenv-install'
	@echo
	@echo '	$$ make luaenv-install'
	@echo
	@echo '	$$ make nodenv-install'
	@echo
	@echo '	$$ make goenv-install'
	@echo
	@echo '	$$ make composer-install'
	@echo
.PHONY: help

all-install: rbenv-install pyenv-install luaenv-install
.PHONY: all-install

rbenv-install:
	make -C rbenv install
.PHONY: rbenv-install

pyenv-install:
	make -C pyenv install
.PHONY: pyenv-install

luaenv-install:
	make -C luaenv install
.PHONY: luaenv-install

nodenv-install:
	make -C nodenv install
.PHONY: nodenv-install

goenv-install:
	make -C goenv install
.PHONY: goenv-install

composer-install:
	make -C composer install
.PHONY: composer-install

