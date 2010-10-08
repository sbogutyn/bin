#!/bin/bash	
# Instaluje ustawienia dla vima

cd ~

# pobranie źródeł z githuba
git clone git://github.com/astrails/dotvim.git


# jeśli pliki ustawień vima już istnieją to robie backupy
if [ -f ~/.vim ]; then
	mv ~/.vim ~/.vim_backup
fi

if [ -f ~/.vim ]; then
	mv ~/.vimrc ~/.vimrc_backup
fi

# tworze linki symboliczne do plików ustawień
ln -sfn dotvim .vim
ln -sfn dotvim/vimrc .vimrc