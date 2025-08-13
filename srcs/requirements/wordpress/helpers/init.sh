#!/bin/sh

mkdir -p /run/php
chown -R www-data:www-data /run/php/

sed -i 's|listen = /run/php/php7.4-fpm.sock|listen = 0.0.0.0:9000|g' /etc/php/7.4/fpm/pool.d/www.conf

if [ ! -f /var/www/html/wp-config.php ]; then
    wp core download --allow-root --path=/var/www/html
    wp config create --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_PASSWORD --dbhost=$DB_HOST --allow-root --path=/var/www/html
    wp core install --url=$WP_HOST --title="$WP_TITLE" --admin_user=$WP_USER --admin_password=$WP_PASS --admin_email=$WP_EMAIL --allow-root --path=/var/www/html
    wp user create $WP_USER2 $WP_EMAIL2 --role=author --user_pass=$WP_PASS2 --allow-root --path=/var/www/html
fi

# Start PHP-FPM
php-fpm7.4 -F
