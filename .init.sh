#!/bin/bash
#########################################################################
# File Name: install.sh
# Author: Edward.Tang
# mail:   @163.com
# Created Time: Mon 08 Jun 2020 09:01:00 AM PDT
#########################################################################
if grep -q -e mybashrc ~/.bashrc ;then
	echo Nothing to do.
else
	echo "Add mybashrc."
	echo >> ~/.bashrc
	cp .mybashrc ~/
	echo "source ~/.mybashrc" >> ~/.bashrc
fi


if [ -e ~/.vim/autoload/plug.vim ] ;then
	echo Nothing to do.
else
	echo "Add plug.vim"
	mkdir -p ~/.vim/autoload/
	cp plug.vim ~/.vim/autoload/plug.vim
fi

cur_time=$(date +%Y%m%d%H%M)
if [ -e ~/.vimrc ] ;then
    cp ~/.vimrc ~/.vimrc_bak$cur_time
fi

cp .vimrc* ~/
