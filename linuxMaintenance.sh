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

echo "    __    _                                   
                    _wr""        "-q__                             
                 _dP                 9m_     
               _#P                     9#_                         
              d#@                       9#m                        
             d##                         ###                       
            J###                         ###L                      
            {###K                       J###K                      
            ]####K      ___aaa___      J####F                      
        __gmM######_  w#P""   ""9#m  _d#####Mmw__                  
     _g##############mZ_         __g##############m_               
   _d####M@PPPP@@M#######Mmp gm#########@@PPP9@M####m_             
  a###""          ,Z"#####@" '######"\g          ""M##m            
 J#@"             0L  "*##     ##@"  J#              *#K           
 #"               `#    "_gmwgm_~    dF               `#_          
7F                 "#_   ]#####F   _dK                 JE          
]                    *m__ ##### __g@"                   F          
                       "PJ#####LP"                                 
 `                       0######_                      '           
                       _0########_                                   
     .               _d#####^#####m__              ,              
      "*w_________am#####P"   ~9#####mw_________w*"                  
          ""9@#####@M""           ""P@#####@M""           
          "
