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
	@echo '	$$ make rbenv-install'
	@echo
	@echo '	$$ make luaenv-install'
	@echo
.PHONY: help


rbenv-install:
	make -C rbenv install 
.PHONY: rbenv-install

luaenv-install:
	make -C luaenv install 
.PHONY: luaenv-install
