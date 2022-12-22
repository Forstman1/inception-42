#!bin/bash

apt install redis-server -y

echo "maxmemory 256mb
maxmemory-policy allkeys-lru" >> /etc/redis/redis.conf

apt install wget -y

wget https://assets.digitalocean.com/articles/wordpress_redis/object-cache.php

mv object-cache.php /var/www/html/



redis-server --protected-mode no

sleep 10000000