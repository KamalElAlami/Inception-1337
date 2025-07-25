FROM debian:bullseye

RUN apt-get update --fix-missing && \
    apt-get install -y --fix-broken && \
    apt-get install -y mariadb-server

    
COPY ./helpers/init.sh /init.sh
    
RUN sed -i "s/127.0.0.1/0.0.0.0/" /etc/mysql/mariadb.conf.d/50-server.cnf
RUN chmod +x /init.sh


CMD ["./init.sh"]