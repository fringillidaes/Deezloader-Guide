#!/bin/bash
#Written by sysvinit#4853
#Usb gang
#Script to install Node 8.5 
#make sure to chmod +x this script 
#execute in your home directory with "./node-install.sh"

read -p "Type confirm if you wish to continue: " input
if [ ! "$input" = "confirm" ]
then
        exit
fi

read -p "Changing DIR to home." -t 3
cd ~/
read -p "Creating Node directory" -t 3
wget https://nodejs.org/download/release/v8.5.0/node-v8.5.0.tar.gz
echo 'export PATH=$HOME/local/bin:$PATH' >> ~/.bashrc
. ~/.bashrc
mkdir ~/local
tar -xzvf node-v8.5.0.tar.gz
cd node-v8.5.0
./configure --prefix=~/local
make install
. ~/.bashrc
wget https://www.npmjs.org/install.sh
chmod +x install.sh
./install.sh
