#!/bin/bash

clear
pkg install figlet ruby
gem install lolcat
sh -c "$(curl -fsSL https://raw.githubusercontent.com/SwapnilSoni1999/spotify-dl/master/tools/termux.sh)"
echo "alias sdl='cd ~/SpotifyDL && bash sdl.sh'" >> ~/.zshrc
echo "alias sdl='cd ~/SpotifyDL && bash sdl.sh'" >> ~/../usr/etc/bash.bashrc
echo "alias uninstall-sdl='cd ~/SpotifyDL && ./uninstall.sh'" >> ~/.zshrc
echo "alias uninstall-sdl='cd ~/SpotifyDL && ./uninstall.sh'" >> ~/../usr/etc/bash.bashrc
echo "alias update-sdl='cd ~/SpotifyDL && ./update.sh'" >> ~/.zshrc
echo "alias update-sdl='cd ~/SpotifyDL && ./update.sh'" >> ~/../usr/etc/bash.bashrc
echo "Proses instalasi berhasil"
sleep 2
$SHELL
