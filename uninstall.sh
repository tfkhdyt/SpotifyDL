#!/bin/bash

cd ~
sed -i '/sdl/d' .zshrc
sed -i '/sdl/d' ../usr/etc/bash.bashrc
rm -rf SpotifyDL/
cd ~
$SHELL
