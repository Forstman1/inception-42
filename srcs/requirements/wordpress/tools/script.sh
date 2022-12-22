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


export WP_DATABASE_NAME=wordpress
export WP_DATABASE_USR=sami
export WP_DATABASE_PWD=nice
export WP_DATABASE_HOST=mariadb

export DOMAIN_NAME=sahafid.1337.ma
export WP_TITLE=RiadElYacoute
export WP_ADMIN_USR=forstman
export WP_ADMIN_PWD=123
export WP_ADMIN_EMAIL=sami.hafid.hs@gmail.com
export WP_USR=sami
export WP_EMAIL=sahafid@1337.com
export WP_PWD=123

# source of info https://developer.wordpress.org/cli/commands/core/

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar 
chmod +x wp-cli.phar 
mv wp-cli.phar /usr/local/bin/wp

wp core download --allow-root

mv /var/www/html/wp-config-sample.php /var/www/html/wp-config.php 


wp core install --url=$DOMAIN_NAME/wordpress --title=$WP_TITLE --admin_user=$WP_ADMIN_USR --admin_password=$WP_ADMIN_PWD --admin_email=$WP_ADMIN_EMAIL --skip-email --allow-root
mv /wp-config.php /var/www/html/wp-config.php
# wp user create $WP_USR $WP_EMAIL --role=author --user_pass=$WP_PWD --allow-root


wp theme install astra --activate --allow-root


wp plugin install redis-cache --activate --allow-root
wp plugin update --all --allow-root



# #what is php -fpm aka fastCGI process manager

 
sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf

mkdir /run/php
cd /




wp plugin install redis-cache --activate --allow-root
wp plugin update --all --allow-root

wp redis enable --allow-root

/usr/sbin/php-fpm7.3 -F