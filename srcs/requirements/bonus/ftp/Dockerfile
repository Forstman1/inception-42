FROM debian:buster


RUN apt -y update && apt -y upgrade 

RUN apt install vsftpd -y && cp /etc/vsftpd.conf /etc/vsftpd.conf.orig && apt install vim -y

# COPY ./conf/default /etc/nginx/sites-available/

# RUN /script.sh

CMD ["sleep", "10000000"]

