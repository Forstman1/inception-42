#!/bin/bash


mkdir -p /var/www/html

cp /etc/vsftpd/vsftpd.conf /etc/vsftpd/vsftpd.conf.bak
mv /tmp/vsftpd.conf /etc/vsftpd/vsftpd.conf

# Add the USER, change his password and declare him as the owner of wordpress folder and all subfolders

adduser sami --disabled-password
echo "sami:nice" | /usr/sbin/chpasswd &> /dev/null
chown -R sami:sami /var/www/html

echo "sami" | tee -a /etc/vsftpd.userlist &> /dev/null

