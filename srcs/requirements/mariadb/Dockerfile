FROM debian:bullseye

RUN apt-get update --fix-missing && \
    apt-get install -y --fix-broken && \
    apt-get install -y mariadb-server


COPY ./helpers/init.sh /init.sh

RUN chmod u+x /init.sh

CMD ["/init.sh"]