
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
	@echo '	$$ make prepare'
	@echo
	@echo '	$$ make install'
	@echo
	@echo '	$$ make package-install'
	@echo
	@echo '	$$ make config-install'
	@echo


.PHONY: help


prepare:
	@./prepare.sh
.PHONY: prepare


install:
	@./install.sh
.PHONY: install


package-install:
	@./package-install.sh
.PHONY: package-install

config-install:
	@./config-install.sh
.PHONY: config-install
