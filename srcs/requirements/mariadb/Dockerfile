FROM debian:bullseye

RUN apt update && apt upgrade -y 
RUN apt install mariadb-server -y

COPY ./helpers/init.sh /init.sh

RUN chmod u+x /init.sh

CMD ["/init.sh"]