

################################################################################
### Head: goenv
##

export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"

##
### Tail: goenv
################################################################################


################################################################################
### Head: go workspace
##

# https://golang.org/doc/gopath_code
# https://golang.org/doc/code

export GOPATH="$HOME/app/go/workspace"
export PATH="$GOPATH/bin:$PATH"

if ! [ -d "$GOPATH" ]; then
	mkdir -p "$GOPATH"
fi

##
### Tail: go workspace
################################################################################
