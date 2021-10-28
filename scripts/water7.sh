#!/usr/bin/bash

# Sambung ke Internet
echo nameserver 192.168.122.1 > /etc/resolv.conf

# Update repo dan install
apt update
apt install bind9 -y

# Setup configurasi
cp named.conf.local /etc/bind/named.conf.local
cp named.conf.options /etc/bind/named.conf.options

# Buat folder delegasi "sunnygo"
mkdir /etc/bind/sunnygo

# Delegasi subdomain
cp mecha.franky.D16.com /etc/bind/sunnygo/mecha.franky.D16.com

# Restart bind
service bind9 restart

# Clear terminal
clear
