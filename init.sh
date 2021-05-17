#!/bin/bash
cd root

apt update
apt upgrade -y
apt install git software-properties-common iotop htop -y
add-apt-repository -y ppa:jgmath2000/et
apt update
apt install et -y

git clone https://github.com/Chia-Network/chia-blockchain.git --recurse-submodules
cd chia-blockchain

chmod +x ./install.sh
sh install.sh

. ./activate
chia init
