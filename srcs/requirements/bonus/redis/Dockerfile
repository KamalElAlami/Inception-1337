FROM debian:bullseye

RUN apt update && \
    apt install -y redis-server

CMD ["redis-server", "--port", "6380", "--bind", "0.0.0.0"]