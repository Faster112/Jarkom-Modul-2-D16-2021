#!/usr/bin/bash

# Sambung ke Internet
echo nameserver 192.168.122.1 > /etc/resolv.conf

# Update repo dan install
apt update
apt install bind9 -y

# Bikin folder "kaizoku"
mkdir /etc/bind/kaizoku

# Domain utama, subdomain dan delegasi subdomain
cp franky.D16.com /etc/bind/kaizoku/franky.D16.com

# Reverse domain
cp 2.29.10.in-addr.arpa /etc/bind/kaizoku/2.29.10.in-addr.arpa

# Setup configurasi
cp named.conf.local /etc/bind/named.conf.local
cp named.conf.options /etc/bind/named.conf.options

# Restart bind9
service bind9 restart

# Clear terminal
clear
