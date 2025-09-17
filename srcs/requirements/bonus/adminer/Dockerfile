FROM debian:bookworm

RUN apt update && \
    apt install -y php adminer

CMD ["php", "-S", "0.0.0.0:2000", "/usr/share/adminer/adminer.php"]