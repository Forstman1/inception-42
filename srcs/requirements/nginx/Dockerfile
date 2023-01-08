FROM debian:buster


RUN apt -y update && apt install -y nginx && apt install openssl -y




# COPY ./conf/default /etc/nginx/sites-available/

COPY ./tools/script.sh /


CMD [ "/script.sh" ]
