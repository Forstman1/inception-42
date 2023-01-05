FROM debian:buster


RUN apt -y update 

COPY ./tools/script.sh /

RUN apt install wget -y && apt install php php-mysql  -y


CMD ["/script.sh"]

