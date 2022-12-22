FROM debian:buster


RUN apt-get -y update && apt-get -y upgrade && apt update -y && apt-get -y install openssl && apt upgrade -y
RUN apt install php-fpm php-mysql -y && apt install php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip -y && apt install curl -y

# RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

COPY ./tools/script.sh /
COPY ./tools/wp-config.php /

# RUN /script.sh


CMD [ "/script.sh" ]
