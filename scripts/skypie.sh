#!/usr/bin/bash

# Sambung ke Internet
echo nameserver 192.168.122.1 > /etc/resolv.conf

# Update repo dan install
apt update
apt install apache2 apache2-utils php libapache2-mod-php7.0 ca-certificates -y

# Start apache
service apache2 start

# Defaul conf
cp 000-default.conf /etc/apache2/sites-available/000-default.conf 

# franky.D16.com
cp -r franky.D16.com/ /var/www/franky.D16.com
cp franky.D16.com.conf /etc/apache2/sites-available/franky.D16.com.conf
a2enmod rewrite
a2ensite franky.D16.com.conf
service apache2 restart

# super.franky.D16.com
cp -r super.franky.D16.com/ /var/www/super.franky.D16.com
cp super.franky.D16.com.conf /etc/apache2/sites-available/super.franky.D16.com.conf
a2ensite super.franky.D16.com.conf
service apache2 restart

# general.mecha.franky.D16.com
cp -r general.mecha.franky.D16.com/ /var/www/general.mecha.franky.D16.com
cp general.mecha.franky.D16.com.conf /etc/apache2/sites-available/general.mecha.franky.D16.com.conf
a2ensite general.mecha.franky.D16.com.conf
service apache2 restart

# Clear terminal
clear


