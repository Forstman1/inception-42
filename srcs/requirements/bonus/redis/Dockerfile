FROM debian:buster


RUN apt-get -y update && apt install redis-server -y && echo "maxmemory 256mb" >> /etc/redis/redis.conf

RUN echo "maxmemory-policy allkeys-lru" >> /etc/redis/redis.conf

RUN sed -i -r "s/bind 127.0.0.1/#bind 127.0.0.0/" /etc/redis/redis.conf


CMD ["redis-server",  "--protected-mode", "no"]