FROM debian:bookworm

RUN apt update && \
    apt install -y mariadb-server

    
COPY ./tools/init.sh /init.sh
    
RUN sed -i "s/127.0.0.1/0.0.0.0/" /etc/mysql/mariadb.conf.d/50-server.cnf
RUN chmod +x /init.sh


CMD ["./init.sh"]
