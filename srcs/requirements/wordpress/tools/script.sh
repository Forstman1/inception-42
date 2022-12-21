#!bin/bash





# apt-get install mariadb-server -y
# install wordpress zip file in tmp

# cd /tmp
# curl -LO https://wordpress.org/latest.tar.gz


# # decompress the .tar file
# tar xzvf latest.tar.gz

# # change the name of the file
# cp /tmp/wordpress/wp-config-sample.php /tmp/wordpress/wp-config.php

# create directory to use in nginx container later and also to setup the wordpress conf
mkdir /var/www/
mkdir /var/www/html

cd /var/www/html

# # move everything from the tmp file to www file
# cp -a /tmp/wordpress/. /var/www/html

# chown -R www-data:www-data /var/www/html

# #back to root
# cd /


WP_DATABASE_NAME=wordpress
WP_DATABASE_USR=sami
WP_DATABASE_PWD=nice
WP_DATABASE_HOST=mariadb


DOMAIN_NAME=sahafid.1337.ma
WP_TITLE=RiadElYacoute
WP_ADMIN_USR=forstman
WP_ADMIN_PWD=123
WP_ADMIN_EMAIL=sami.hafid.hs@gmail.com
WP_USR=sami
WP_EMAIL=sahafid@1337.com
WP_PWD=123

# source of info https://developer.wordpress.org/cli/commands/core/

while ! mariadb -h$MYSQL_HOST -u$WP_DATABASE_USR -p$WP_DATABASE_PWD $WP_DATABASE_NAME &>/dev/null; do
    sleep 3
done

wp core download --allow-root
# wp config create --dbname=$WP_DATABASE_NAME --dbuser=$WP_DATABASE_USR --dbpass=$WP_DATABASE_PWD --dbhost=$WP_DATABASE_HOST --dbcharset="utf8" --dbcollate="utf8_general_ci" --allow-root
wp core install --url=$DOMAIN_NAME/wordpress --title=$WP_TITLE --admin_user=$WP_ADMIN_USR --admin_password=$WP_ADMIN_PWD --admin_email=$WP_ADMIN_EMAIL --skip-email --allow-root
wp user create $WP_USR $WP_EMAIL --role=author --user_pass=$WP_PWD --allow-root


wp theme install astra --activate --allow-root


wp plugin install redis-cache --activate --allow-root
wp plugin update --all --allow-root

mv /var/www/html/wp-config-sample.php /var/www/html/wp-config.php 

# #what is php -fpm aka fastCGI process manager

 
sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf

mkdir /run/php
cd /

# mv /wp-config.php /var/www/html/wp-config.php



# wp plugin install redis-cache --activate --allow-root
# wp plugin update --all --allow-root

# wp redis enable --allow-root
