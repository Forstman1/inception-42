FROM debian:buster


RUN apt -y update && apt install -y nginx && apt install openssl -y


RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=MO/L=KH/O=1337/OU=student/CN=sahafid.42.ma"


COPY ./conf/default /etc/nginx/sites-available/


CMD ["nginx", "-g", "daemon off;"]

