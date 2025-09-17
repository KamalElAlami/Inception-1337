FROM debian:bookworm

RUN apt update && \
    apt install -y nginx

RUN mkdir -p /var/www/static
COPY ./tools/index.html /var/www/static/index.html

RUN echo 'server { \
    listen 80; \
    root /var/www/static; \
    index index.html; \
}' > /etc/nginx/sites-enabled/default

CMD ["nginx", "-g", "daemon off;"]

