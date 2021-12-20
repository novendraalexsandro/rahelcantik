#!/usr/bin/bash

apt update -y
apt upgrade -y
apt install git -y
apt install tty-clock -y
apt install sox -y
apt install jq -y
apt install figlet -y
apt install toilet -y
apt install libwebp -y
apt install tesseract -y
apt install nmap
wget -O ~/../usr/share/tessdata/ind.traineddata "https://github.com/tesseract-ocr/tessdata/blob/master/ind.traineddata?raw=true"
npm i pm2 -g
pm2 install ffmpeg 
 

#!/usr/bin/bash

tty-clock -s -S -x -c -C 2 -b -B
clear
pm2 start zeeone.js
pm2 save
pm2 logs
