#!/bin/bash

# Copy the vimrc
cp .vimrc ~/.vimrc

# Make the required directories
rm -rf ~/.vim
mkdir ~/.vim
mkdir ~/.vim/autoload
mkdir ~/.vim/colors
mkdir ~/.vim/bundle

# Install Pathogen
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Add the monokai colour scheme

cp monokai.vim ~/.vim/colors/monokai.vim

# Now the dependencies

git clone git@github.com:kien/ctrlp.vim.git ~/.vim/bundle
git clone git@github.com:Raimondi/delimitMate.git ~/.vim/bundle
git clone git@github.com:scrooloose/nerdcommenter.git ~/.vim/bundle
git clone git@github.com:scrooloose/nerdtree.git ~/.vim/bundle
git clone git@github.com:vim-syntastic/syntastic.git ~/.vim/bundle
git clone git@github.com:Quramy/tsuquyomi.git ~/.vim/bundle
git clone git@github.com:leafgarland/typescript-vim.git ~/.vim/bundle
git clone git@github.com:vim-airline/vim-airline.git ~/.vim/bundle
git clone git@github.com:alvan/vim-closetag.git ~/.vim/bundle
git clone git@github.com:Shougo/vimproc.vim.git ~/.vim/bundle
git clone git@github.com:tpope/vim-sensible.git ~/.vim/bundle

