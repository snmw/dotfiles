#!/usr/bin/env bash

git clone https://github.com/powerline/fonts.git --depth=1 ~/fonts_tmp
cd ~/fonts_tmp
source ./install.sh
cd
rm -rf ~/fonts_tmp
