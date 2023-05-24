#!/usr/bin/env bash

set -eou pipefail
IFS=$'\n\t'
setterm --reset

clear 
setterm -background red

if [["$(id -u)"!="0"]]; 
then
echo "You need a Root permission for this running."
sleep 3
clear
else
echo "This script will be execute as a root."
sleep 4
clear
fi

echo "**********Checking Repositories and update them:**********"
sudo apt update; 
sudo apt upgrade;
sudo apt-get clean;
echo "**********Repository stage done.**********"
sleep 3

echo "**********Available space on file systems:**********"
sudo df -h
echo "**********File Systems space done.**********"
sleep 3

echo "**********Hard Drive information:**********"
sudo fdisk -l
echo "**********HD info done.**********"
sleep 3

echo "**********RAM information:**********"
free -m
echo "**********RAM info done.**********"
sleep 3
