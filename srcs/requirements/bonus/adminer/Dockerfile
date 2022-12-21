FROM debian:buster


RUN apt -y update && apt -y upgrade 
RUN apt-get -y update && apt-get -y upgrade 

COPY ./tools/script.sh /

RUN apt install wget -y && apt-get install apache2 php libapache2-mod-php php-curl php-cli php-mysql php-gd  -y


CMD ["/script.sh"]

