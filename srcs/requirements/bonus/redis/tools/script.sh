#!bin/bash

# apt install redis-server -y

# echo "maxmemory 256mb
# maxmemory-policy allkeys-lru" >> /etc/redis/redis.conf

sed -i -r "s/bind 127.0.0.1/#bind 127.0.0.0/" /etc/redis/redis.conf

redis-server --protected-mode no

# sleep 10000000
