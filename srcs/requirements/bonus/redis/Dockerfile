FROM debian:buster


RUN apt -y update && apt -y upgrade 
RUN apt-get -y update && apt-get -y upgrade && apt install redis-server -y && echo "maxmemory 256mb" >> /etc/redis/redis.conf 
RUN echo "maxmemory-policy allkeys-lru" >> /etc/redis/redis.conf

COPY ./tools/script.sh /


# RUN /script.sh

CMD ["/script.sh"]