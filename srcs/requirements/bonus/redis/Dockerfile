FROM debian:oldstable

RUN apt update && \
    apt install -y redis-server

CMD ["redis-server", "--port", "6380", "--protected-mode", "no", "--bind", "0.0.0.0"]