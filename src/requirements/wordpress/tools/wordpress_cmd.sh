# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    wordpress_cmd.sh                                   :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ychaaibi <ychaaibi@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/05 17:17:07 by ychaaibi          #+#    #+#              #
#    Updated: 2023/11/21 08:34:27 by ychaaibi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

service php7.4-fpm start;

if [ -d /var/www/html/wordpress ]; then
    :
else
    wget https://wordpress.org/latest.tar.gz;
    tar -zxvf latest.tar.gz;
    chown -R www-data:www-data /var/www/html/wordpress
    chmod   775 /var/www/html/wordpress
    wp config create \
        --dbname=$MARIADB_DB_NAME \
        --dbuser=$MARIADB_USER_NAME \
        --dbpass=$MARIADB_USER_PASS \
        --dbhost=$MARIADB_DB_HOST \
        --dbprefix=$WORDPRESS_PFIX \
        --path=$WORDPRESS_PATH \
        --allow-root
    wp config set WP_REDIS_HOST redis \
        --allow-root \
        --path=$WORDPRESS_PATH
    wp config set WP_REDIS_PORT 6379 \
        --allow-root \
        --path=$WORDPRESS_PATH
    wp config set WP_CACHE true \
        --path=$WORDPRESS_PATH \
        --allow-root
    wp core install \
        --url=$WORDPRESS_URL\
        --title=inception \
        --admin_user=$WORDPRESS_ADMIN_NAME \
        --admin_password=$WORDPRESS_ADMIN_PASS \
        --admin_email=$WORDPRESS_ADMIN_EMAIL \
        --path=$WORDPRESS_PATH \
        --allow-root
    wp user create $WORDPRESS_USER_NAME $WORDPRESS_USER_EMAIL \
        --user_pass=$WORDPRESS_USER_PASS \
        --first_name=$WORDPRESS_USER_FIRST_NAME \
        --last_name=$WORDPRESS_USER_LAST_NAME \
        --user_url=$WORDPRESS_URL \
        --path=$WORDPRESS_PATH \
        --allow-root
    wp plugin install redis-cache \
        --allow-root \
        --path=$WORDPRESS_PATH
    wp plugin activate redis-cache \
        --allow-root \
        --path=$WORDPRESS_PATH
    wp redis enable \
        --allow-root \
        --path=$WORDPRESS_PATH
fi

service php7.4-fpm stop;

php-fpm7.4  -F