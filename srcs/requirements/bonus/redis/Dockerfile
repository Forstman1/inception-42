FROM debian:buster


RUN apt -y update && apt -y upgrade 
RUN apt-get -y update && apt-get -y upgrade 


COPY ./script.sh /


# RUN wget "http://www.adminer.org/latest.php" -O /var/www/html/adminer.php && chown -R www-data:www-data /var/www/html/adminer.php && chmod 755 /var/www/html/adminer.php
# COPY ./conf/default /etc/nginx/sites-available/

# RUN /script.sh

CMD ["/script.sh"]