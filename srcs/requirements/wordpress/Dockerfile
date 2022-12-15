FROM debian:buster


RUN apt-get -y update && apt-get -y upgrade && apt update -y && apt-get -y install openssl
RUN apt install php-fpm php-mysql -y && apt install php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip -y && apt install curl && apt-get install systemd -y


COPY ./tools/script.sh /
COPY ./tools/wp-config.php /

RUN /script.sh


CMD [ "/usr/sbin/php-fpm7.3", "-F" ]
