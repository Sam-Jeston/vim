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
cd ~/.vim/bundle
git clone git@github.com:kien/ctrlp.vim.git
git clone git@github.com:Raimondi/delimitMate.git
git clone git@github.com:scrooloose/nerdcommenter.git
git clone git@github.com:scrooloose/nerdtree.git
git clone git@github.com:vim-syntastic/syntastic.git
git clone git@github.com:leafgarland/typescript-vim.git
git clone git@github.com:vim-airline/vim-airline.git
git clone git@github.com:alvan/vim-closetag.git
git clone git@github.com:tpope/vim-sensible.git

git clone git@github.com:Shougo/vimproc.vim.git
cd ~/.vim/bundle/vimproc.vim && make

cd ~/.vim/bundle
git clone git@github.com:Quramy/tsuquyomi.git

# Rust
git clone --depth=1 https://github.com/rust-lang/rust.vim.git ~/.vim/bundle/rust.vim
git clone --depth=1 https://github.com/racer-rust/vim-racer.git ~/.vim/bundle/vim-racer
