#!/usr/bin/bash

iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE -s 10.29.0.0/16
apt update
clear
