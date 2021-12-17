#!/usr/bin/bash

pkg update
pkg upgrade
apt-get install libwebp
apt-get install mc
apt-get install ffmpeg
apt-get install wget
apt-get install tesseract
apt-get install nmap
npm i pm2 -g
pm2 npm install ffmpeg
wget -O ~/../usr/share/tessdata/ind.traineddata "https://github.com/tesseract-ocr/tessdata/blob/master/ind.traineddata?raw=true"

echo "All dependencies have been installed, please run the command \"npm start\" to immediately start the script"
pm2 start zeeone.js
pm2 save && pm2 monit
