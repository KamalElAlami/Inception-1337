#!/bin/sh

mkdir -p /run/php
chown -R www-data:www-data /run/php/

sed -i 's|listen = /run/php/php8.2-fpm.sock|listen = 0.0.0.0:9000|g' /etc/php/8.2/fpm/pool.d/www.conf

if [ ! -f /var/www/html/wp-config.php ]; then
    wp core download --allow-root --path=/var/www/html
    wp config create --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_PASSWORD --dbhost=$DB_HOST --allow-root --path=/var/www/html
    wp config set WP_REDIS_HOST redis --allow-root
  	wp config set WP_REDIS_PORT 6380 --raw --allow-root
    wp core install --url=$WP_HOST --title="$WP_TITLE" --admin_user=$WP_USER --admin_password=$WP_PASS --admin_email=$WP_EMAIL --allow-root --path=/var/www/html
    wp user create $WP_USER2 $WP_EMAIL2 --role=author --user_pass=$WP_PASS2 --allow-root --path=/var/www/html
    chown -R www-data:www-data /var/www/html/wp-content/
    wp plugin install redis-cache --activate --allow-root
    wp redis enable --allow-root
fi

# Start PHP-FPM
exec php-fpm8.2 -F