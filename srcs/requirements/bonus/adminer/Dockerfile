FROM debian:buster


RUN apt -y update && apt-get -y update

COPY ./tools/script.sh /

RUN apt install wget -y && apt-get install php  php-mysql  -y


CMD ["/script.sh"]

