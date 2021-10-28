#!/usr/bin/bash

# Sambung ke Internet
printf "nameserver 192.168.122.1" > /etc/resolv.conf

# Update repo dan install
apt update
apt install dnsutils lynx -y

# Sambung ke EniesLobby, Water7, dan Skypie
printf "nameserver 10.29.2.2\nnameserver 10.29.2.3\nnameserver 10.29.2.4" > /etc/resolv.conf

# Clear terminal
clear
