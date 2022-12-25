#!/bin/bash


mkdir -p /var/www/html

service vsftpd start
# cp /etc/vsftpd/vsftpd.conf /etc/vsftpd/vsftpd.conf.bak
# mv /tmp/vsftpd.conf /etc/vsftpd/vsftpd.conf

# Add the USER, change his password and declare him as the owner of wordpress folder and all subfolders

adduser sami --disabled-password

echo "sami:nice" | /usr/sbin/chpasswd &> /dev/null

chown -R sami:sami /var/www/html

echo "sami" | tee -a /etc/vsftpd.userlist &> /dev/null

# /usr/sbin/vsftpd /etc/vsftpd.conf

mkdir /home/sami/ftp

mkdir /home/sami/ftp/files
chown sami:sami /home/sami/ftp/files

sed -i -r "s/#write_enable=YES/write_enable=YES/1"   /etc/vsftpd.conf
sed -i -r "s/#chroot_local_user=YES/chroot_local_user=YES/1"   /etc/vsftpd.conf

echo "user_sub_token=sami
local_root=/home/sami/ftp
pasv_min_port=40000
pasv_max_port=50000
userlist_enable=YES
userlist_file=/etc/vsftpd.userlist
userlist_deny=NO" >> /etc/vsftpd.conf

service vsftpd stop
/usr/sbin/vsftpd
sleep 10000000
