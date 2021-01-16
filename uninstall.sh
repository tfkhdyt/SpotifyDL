#!/bin/bash
clear
cd ~
sed -i '/sdl/d' .zshrc
sed -i '/sdl/d' ../usr/etc/bash.bashrc
rm -rf SpotifyDL/
cd ~
echo "Proses uninstall sukses!"
sleep 3
$SHELL
