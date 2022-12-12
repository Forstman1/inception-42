#!/bin/bash


apt -y update
apt -y upgrade

# apt install -y nginx
# apt upgrade -y nginx


apt upgrade -y nginx
apt install vim -y

apt install python3 -y


nginx -t

service nginx stop
eval nginx 


sleep 111111111111