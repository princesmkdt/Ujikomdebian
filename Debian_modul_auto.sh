#!/bin/bash

set -euo pipefail

echo "Updating Repository......"
int(input("Update Repository? Y/n: "))

if [ "$input" = "Y" ]; then
    echo "Updating repository..."
    sudo apt update
else
    echo "Exiting..."
fi
echo "Debian Module Installation Script"
echo "Modul Ini Dipakai sesudah Konfig IP Static!!"

int(input("Install Modul Debian?? Y/n: "))

if [ "$input" = "Y" ]; then
    echo "Installing module..."
    sudo apt install bind9 dnsutils
else
    echo "Exiting..."
fi
int(input("install Modul nginx dan APACHE?? Y/n: "))

if [ "$input" = "Y" ]; then
    echo "Installing module..."
    sudo apt install nginx apache2
else
    echo "Exiting..."
fi
int(input("Install Ftp Server Y/n:"))

if [ "$input" = "Y" ]; then
    echo "Installing module..."
    sudo apt install proftpd ftp
else
    echo "Exiting..."
fi
int(input("Install Database(MariaDB Server) beserta php Y/n?:"))

if [ "$input" = "Y" ]; then
    echo "Installing module..."
    sudo apt install mariadb-server php php-fpm
else
    echo "Exiting..."
fi
int(input("Install FTP(File Transfer Protocol) Server Y/n: "))

if [ "$input" = "Y" ]; then
    echo "Installing module..."
    sudo apt install proftpd ftp
else
    echo "Exiting..."
fi
int(input("Install Mail Server(postfix) Y/n:"))

if [ "$input" = "Y" ]; then
    echo "Installing module..."
    sudo apt install postfix
else
    echo "Exiting..."
fi
int(input("Install Webmail(Roundcube) Y/n:"))

if [ "$input" = "Y" ]; then
    echo "Installing module..."
    sudo apt install roundcube
else
    echo "Exiting..."
fi
