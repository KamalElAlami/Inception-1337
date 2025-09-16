FROM debian:oldstable

RUN apt update && \
    apt install -y vsftpd

COPY ./tools/vsftpd.conf /etc/vsftpd.conf
COPY ./tools/init.sh /init.sh

RUN chmod +x /init.sh

CMD ["/init.sh"]

