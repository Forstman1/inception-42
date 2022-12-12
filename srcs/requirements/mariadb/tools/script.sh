#!/bin/bash

# apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* \
# && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
MARIADB_NAME=wordpress
MARIADB_USERNAME=sami
MARIADB_PASSWORD=nice


# apt-get -y update 
# apt-get -y upgrade

# apt-get install gnupg -y
# apt-key adv --fetch-keys 'https://mariadb.org/mariadb_release_signing_key.asc' -y
# add-apt-repository 'deb [arch=amd64,arm64,ppc64el] https://mariadb.mirror.liquidtelecom.com/repo/10.6/ubuntu focal main'
# apt-get list --upgradable




# apt update && apt upgrade -y mariadb-server mariadb-client

# rm -rf /var/lib/apt/lists/*

# # purge and re-create /var/lib/mysql with appropriate ownership
# mkdir -p /var/run/mysqld 
# chown -R mysql:mysql /var/run/mysqld 
# # ensure that /var/run/mysqld (used for socket and lock files) is writable regardless of the UID our mysqld instance ends up having at runtime
# chmod 777 /var/run/mysqld
# apt install systemd -y
# systemctl enable mariadb
# eval service mysql start

# echo "CREATE DATABASE $MARIADB_NAME;" | mariadb
# echo "CREATE USER '$MARIADB_USERNAME'@'localhost' IDENTIFIED BY '$MARIADB_PASSWORD'; GRANT ALL PRIVILEGES ON *.* TO '$MARIADB_USERNAME'@'localhost';FLUSH PRIVILEGES;" | mariadb
/usr/bin/mysqld_safe
sleep 11111111111

