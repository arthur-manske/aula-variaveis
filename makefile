.POSIX:

NODE = node
NPM = npm

.PHONY: all perms deps clean

all: perms deps

perms:
	chmod +x src/*

deps: 
	$(NPM) install readline-sync

clean: 
	rm -rf package.json package-lock.json node_modules

