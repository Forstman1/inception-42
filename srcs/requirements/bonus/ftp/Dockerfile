FROM debian:buster


RUN apt -y update && apt -y upgrade 

RUN apt install vsftpd -y

COPY ./tools/script.sh /

# RUN /script.sh

CMD ["/script.sh"]

