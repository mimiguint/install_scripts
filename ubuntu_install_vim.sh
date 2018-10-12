#!/usr/bin/env bash

# install other pakage
#
sudo apt-get install -y \
  git \
  build-essential \
  ncurses-dev \
  lua5.2 \
  lua5.2-dev \
  luajit \
  python-dev \
  python3-dev \
  ruby-dev

# get vim
#
cd /usr/local/src/
sudo git clone https://github.com/vim/vim.git

# install vim
#
cd vim
sudo ./configure \
  --with-features=huge \
  --enable-multibyte \
  --enable-luainterp=dynamic \
  --enable-gpm \
  --enable-cscope \
  --enable-fontset \
  --enable-fail-if-missing \
  --prefix=/usr/local \
  --enable-pythoninterp=dynamic \
  --enable-python3interp=dynamic \
  --enable-rubyinterp=dynamic

sudo make
sudo make install

echo 'finished.'
