#!/bin/bash
color(){
  R='\033[0;31m' 
  NC='\033[0m' # No Color
  LG='\033[1;32m'
  Y='\033[1;33m'
  LB='\033[1;34m'                         
  G='\033[0;32m'                           
  B='\033[0;34m'                          
}                                                   
color
logo(){
  figlet -f standard -w $(tput cols) -c "SpotifyDL" | lolcat -a -s 1600                 
}
clear
logo
echo -e "\n   Masukkan link lagu/album/playlist Spotify"
echo -e "   ${Y}Tekan CTRL + C untuk keluar"
printf "\n   ${NC}Link: ${LB}"
read link
clear
figlet -f small -w $(tput cols) -c "Downloading" | lolcat -a -s 1600
cd ~/storage/shared
if [ ! -d "/SpotifyDL" ]
then
  mkdir -p SpotifyDL
  cd SpotifyDL
  spotifydl $link
else
  cd SpotifyDL
  spotifydl $link
fi
clear
echo -e "${NC}Download sukses"
echo -e "${Y}File hasil download tersimpan di folder 'SpotifyDL'"
sleep 2
exit
