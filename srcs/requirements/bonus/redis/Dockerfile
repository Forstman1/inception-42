FROM debian:buster


RUN apt -y update && apt -y upgrade 
RUN apt-get -y update && apt-get -y upgrade 


COPY ./tools/script.sh /


# RUN /script.sh

CMD ["/script.sh"]