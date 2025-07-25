FROM debian:bullseye

RUN apt update --fix-missing && \
    apt-get install -y --fix-broken && \
    apt-get install -y nginx openssl
RUN mkdir /cert

# Generate SSL certificate with OpenSSL
# -x509: self-signed certificate
# -nodes: no password on private key  
# -days 365: valid for 1 year
# -newkey rsa:2048: generate 2048-bit RSA key
# -subj: subject info (no interactive prompts)
RUN openssl req \
    -x509 \
    -nodes \
    -days 365 \
    -newkey rsa:2048 \
    -keyout /cert/nginx.key \
    -out /cert/nginx.crt \
    -subj "/CN=kael-ala.42.fr"

RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html
COPY ./helpers/default.conf /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]