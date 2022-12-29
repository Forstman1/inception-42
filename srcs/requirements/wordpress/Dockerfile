FROM debian:buster


RUN apt-get -y update && apt-get -y upgrade && apt update -y && apt upgrade -y
RUN apt install php-fpm php-mysql -y && apt install php-curl php-gd php-intl php-xml -y && apt install curl -y


COPY ./tools/script.sh /
COPY ./tools/wp-config.php /


CMD [ "/script.sh" ]
