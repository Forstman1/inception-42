#!bin/bash

USERNAME=sami
PASSWORD=nice
DB_HOST=mariadb



# #install php and its extentions

# # install wordpress zip file in tmp

cd /tmp
curl -LO https://wordpress.org/latest.tar.gz


# decompress the .tar file
tar xzvf latest.tar.gz

# change the name of the file
cp /tmp/wordpress/wp-config-sample.php /tmp/wordpress/wp-config.php

# create directory to use in nginx container later and also to setup the wordpress conf
mkdir /var/www/
mkdir /var/www/html

# move everything from the tmp file to www file
cp -a /tmp/wordpress/. /var/www/html

chown -R www-data:www-data /var/www/html

#back to root
cd /
apt install vim -y

# curl -s https://api.wordpress.org/secret-key/1.1/salt/ > /keys
# apt install python3 -y

echo  "define( 'DB_NAME', '""wordpress""' );">> envirement
echo "define( 'DB_USER', '"$USERNAME"' );" >> envirement 
echo "define( 'DB_PASSWORD', '"$PASSWORD"' );" >> envirement 


# #what is php -fpm aka fastCGI process manager

# mkdir /run/php

# /usr/sbin/php-fpm7.3 -F

apt install php-fpm -y


sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf

mkdir /run/php
cd /

mv /wp-config.php /var/www/html/wp-config.php



# python3 change.py
# mkdir /run/php

# /usr/sbin/php-fpm7.3 -F

# sleep 111111111111