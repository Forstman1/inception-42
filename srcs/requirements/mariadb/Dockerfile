FROM debian:buster



RUN apt-get update -y && apt-get install mariadb-server -y


COPY ./tools/50-server.cnf /etc/mysql/mariadb.conf.d/

COPY ./tools/db.sql /


RUN service mysql start && mysql < db.sql
RUN rm -f db.sql

CMD ["/usr/bin/mysqld_safe"]