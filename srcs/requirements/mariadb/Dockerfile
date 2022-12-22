FROM debian:buster



RUN apt-get update -y && apt-get install mariadb-server -y


COPY ./tools/50-server.cnf /etc/mysql/mariadb.conf.d/

COPY ./tools/db.sql /

COPY ./tools/script.sh /

# RUN service mysql start && mysql < db.sql

 
# RUN rm -f db.sql

CMD ["/script.sh"]