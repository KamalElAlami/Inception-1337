FROM debian:oldstable

RUN apt-get update --fix-missing && \
    apt-get install -y --fix-broken && apt-get update && apt-get install -y \
    php8.2-fpm \
    php8.2-mysql \
    php8.2-curl \
    php8.2-gd \
    php8.2-mbstring \
    php8.2-xml \
    php8.2-zip \
    wget \
    curl \
    mariadb-client \
    php-redis \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /var/www/html

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x wp-cli.phar \
    && mv wp-cli.phar /usr/local/bin/wp

RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

COPY tools/init.sh /init.sh
RUN chmod +x /init.sh

WORKDIR /var/www/html

CMD ["/init.sh"]