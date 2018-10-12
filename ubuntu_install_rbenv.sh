#!/usr/bin/env bash

# check rbenv
#
if type rbenv > /dev/null 2>&1; then
  echo 'message: rbenv has already been installed.'
  exit 1
fi

# install other pakage
#
sudo apt-get install -y \
  git \
  autoconf \
  bison \
  build-essential \
  libssl-dev \
  libyaml-dev \
  libreadline6-dev \
  zlib1g-dev \
  libncurses5-dev \
  libffi-dev \
  libgdbm5 \
  libgdbm-dev

# get rbenv
#
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

# set rbenv path
#
echo '' >> ~/.bashrc
echo '# rbenv' >> ~/.bashrc
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc

echo 'finished.'
