FROM debian:buster

COPY ./tools/script.sh /

RUN apt -y update && apt -y upgrade && apt install -y nginx && apt install systemd -y && apt install vim -y && apt install php php-mysql -y

COPY ./conf/default /etc/nginx/sites-available/

CMD ["/script.sh"]

