FROM debian:buster

COPY ./tools/script.sh /

RUN apt -y update && apt -y upgrade && apt install -y nginx && apt install vim -y && apt install openssl -y


COPY ./conf/default /etc/nginx/sites-available/

# RUN /script.sh

CMD ["/script.sh"]

