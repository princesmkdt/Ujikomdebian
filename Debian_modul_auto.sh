#!/bin/bash

# Ensure script is run as root
if [ "$EUID" -ne 0 ]; then
    echo "Please run as root (use sudo)"
    exit 1
fi

set -euo pipefail

echo "Debian Module Installation Script"
echo "Modul Ini Dipakai sesudah Konfig IP Static!!"
echo "------------------------------------------"

# Function to ask and execute
ask_and_install() {
    local prompt="$1"
    local command="$2"
    read -p "$prompt (Y/n): " input
    if [[ "$input" =~ ^[Yy]$ ]]; then
        echo "Executing: $command"
        eval "$command"
    else
        echo "Skipping..."
    fi
    echo ""
}

ask_and_install "Update Repository?" "apt update"

ask_and_install "Install Modul Debian (Bind9, Dnsutils)?" "apt install -y bind9 dnsutils"

ask_and_install "Install Modul Nginx dan Apache2?" "apt install -y nginx apache2"

ask_and_install "Install FTP Server (ProFTPD)?" "apt install -y proftpd-basic ftp"

ask_and_install "Install Database (MariaDB Server) beserta PHP?" "apt install -y mariadb-server php php-fpm php-mysql"

ask_and_install "Install Mail Server (Postfix)?" "apt install -y postfix"

ask_and_install "Install Webmail (Roundcube)?" "apt install -y roundcube"

echo "Semua proses selesai!"
