#!/bin/sh

${PWD}/brewfile.sh

# gitconfig
if [ -e ~/.gitconfig ]; then
	rm ~/.gitconfig
fi
if [ ! -L ~/.gitconfig ]; then
	ln -s ${PWD}/gitconfig ~/.gitconfig
fi
if [ ! -L ~/.gitignore_global ]; then
	ln -s ${PWD}/gitignore_global ~/.gitignore_global
fi
if [ -e ~/.zshrc ]; then
	rm ~/.zshrc
fi
if [ ! -L ~/.zshrc ]; then
	ln -s ${PWD}/zshrc ~/.zshrc
	source ~/.zshrc
fi