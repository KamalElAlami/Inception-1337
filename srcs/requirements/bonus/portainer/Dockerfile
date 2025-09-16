FROM debian:oldstable

RUN apt-get update && apt-get install -y curl \
    && curl -L https://github.com/portainer/portainer/releases/download/2.20.3/portainer-2.20.3-linux-amd64.tar.gz -o portainer.tar.gz \
    && tar xvzf portainer.tar.gz -C / \
    && mv /portainer /usr/local/bin/portainer/ \
    && rm portainer.tar.gz

RUN mkdir -p /data

EXPOSE 9443

CMD ["/usr/local/bin/portainer/portainer", "--data", "/data"]
