FROM debian:bullseye

RUN apt update --fix-missing && \
    apt install -y --fix-broken && \
    apt install -y redis-server

CMD ["redis-server", "--port", "6380", "--protected-mode", "yes", "--bind", "0.0.0.0"]