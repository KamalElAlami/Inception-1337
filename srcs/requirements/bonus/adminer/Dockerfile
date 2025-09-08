FROM debian:bullseye

RUN apt update --fix-missing && \
    apt install -y --fix-broken && \
    apt install -y php adminer

CMD ["php", "-S", "0.0.0.0:2000", "/usr/share/adminer/adminer.php"]