#!/bin/bash
echo Installing base vim setup.

echo Pathogen - Plugin Manager
echo Setting up autoload file.
if [ -d ~/.vim/autoload/ ]; then
  echo -e Autoload dir already exists.
else
  echo making autoload dir
  mkdir -p ~/.vim/autoload
fi

echo Setting up bundle file.
if [ -d ~/.vim/bundle/ ]; then
  echo -e Bundle dir already exists.
else
  echo making bundle dir.
  mkdir -p ~/.vim/bundle
fi

echo Installing Pathogen.
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo NERDTree - Directory Tree
if [ -d ~/.vim/bundle/nerdtree/ ]; then
  echo -e NERDTREE installed already
else
  echo Installing NERDTree.
  git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
fi

echo vim-vinegar - Simplified Dir Tree
if [ -d ~/.vim/bundle/vim-vinegar/ ]; then
  echo -e vim-vinegar installed already
else
  echo Installing vim-vinegar.
  git clone https://github.com/tpope/vim-vinegar.git ~/.vim/bundle/vim-vinegar
fi

echo CtrlP - File Navigation
if [ -d ~/.vim/bundle/ctrlp.vim/ ]; then
  echo -e ctrlp installed already
else
  echo Installing ctrl p.
  git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/vim-vinegar
fi

echo vim-airline - Bottom Bar Information
if [ -d ~/.vim/bundle/vim-airline/ ]; then
  echo -e vim-airline installed already
else
  echo Installing vim-airline.
  git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
fi

echo vim-airline-themes - Bottom Bar Themes
if [ -d ~/.vim/bundle/vim-airline-themes/ ]; then
  echo -e vim-airline-themes installed already
else
  echo Installing vim-airline.
  git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/bundle/vim-airline-themes
fi

echo vim-fugitive - Github controls
if [ -d ~/.vim/bundle/vim-fugitive/ ]; then
  echo -e vim-fugitive installed already
else
  echo Installing vim-fugitive.
  git clone https://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive
fi

echo vim-surround - Easy surrounding of text
if [ -d ~/.vim/bundle/surround.vim/ ]; then
  echo -e vim-surround installed already
else
  echo Installing vim-surround.
  git clone https://tpope.io/vim/surround.git ~/.vim/bundle/surround.vim
fi

echo vim-repeat - Repeat complex commands with .
if [ -d ~/.vim/bundle/repeat.vim/ ]; then
  echo -e vim-repeat installed already
else
  echo Installing vim-repeat.
  git clone https://tpope.io/vim/repeat.git ~/.vim/bundle/repeat.vim
fi

echo Solarized - Pretty colours
if [ -d ~/.vim/bundle/vim-colors-solarized/ ]; then
  echo -e vim-colors-solarized installed already
else
  echo Installing vim-colors-solarized.
  git clone git://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colors-solarized
fi

echo vim javascript - Javascript stuff
if [ -d ~/.vim/bundle/vim-javascript/ ]; then
  echo -e vim-javascript installed already
else
  echo Installing vim-javascript.
    git clone https://github.com/pangloss/vim-javascript.git ~/.vim/bundle/vim-javascript
fi

echo Copying vimrc over.
cp vimrc ~/.vimrc
