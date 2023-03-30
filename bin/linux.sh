#!/bin/bash

#### check op system is linux
uname | LINUX
if(( $LINUX != "Linux" )){
	2>linuxsetup.log
	exit
}

mkdir -p ~/.TRASH

mv ~/.vimrc .bup_vimrc
echo "~/.vimrc renamed to ~/.bup_vimrc" >> linuxsetup.log

cp ~/.dotfiles/etc/vimrc ~/.vimrc


echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
