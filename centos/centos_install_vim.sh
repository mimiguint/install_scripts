#!/usr/bin/env bash

# install other pakage
#
sudo yum install -y \
  gcc \
  git \
  ncurses-devel \
  lua-devel \
  perl-devel \
  perl-ExtUtils-Embed \
  python-devel


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
  --enable-perlinterp=dynamic \
  --enable-pythoninterp=dynamic


sudo make
sudo make install

echo 'finished.'
