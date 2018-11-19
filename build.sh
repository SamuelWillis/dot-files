#!/bin/bash
echo "Cloning repos to '~/.vim/bundle'"

echo "Pathogen - Plugin Manager"
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo NERDTree - Directory Tree
if [ -d '~/.vim/bundle/nerdtree' ]; then
  echo -e NERDTREE installed already
else
  echo Installing NERDTree.
  git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
fi

echo vim-vinegar - Simplified Dir Tree

echo CtrlP - File Navigation

echo vim-airline - Bottom Bar Information

echo vim-fugitive - Github controls

echo vim-surround - Easy surrounding of text

echo vim-repeat - Repeat complex commands with .

echo Solarized - Pretty colours
