#!bin/bash

apt install redis-server php5-redis -y

echo "maxmemory 256mb
maxmemory-policy allkeys-lru" >> /etc/redis/redis.conf

apt install wget -y

wget https://assets.digitalocean.com/articles/wordpress_redis/object-cache.php

mv object-cache.php /var/www/html/




sleep 1000000