#!/bin/bash



echo "Mo
Béni Mellal-Khénifra
khouribga
1337
school
wordpress
sami.hafid.hs@gmail.com" > info

< info openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt 



service nginx stop
