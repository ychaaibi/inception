# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    mariadb.sh                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ychaaibi <ychaaibi@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/05 17:14:34 by ychaaibi          #+#    #+#              #
#    Updated: 2023/11/17 17:33:53 by ychaaibi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#/bin/bash

service mariadb start;

echo "
create database if not exists $MARIADB_DB_NAME;
create user if not exists $MARIADB_USER_NAME@$DOMAIN_NAME identified by '$MARIADB_USER_PASS';
grant all privileges on $MARIADB_DB_NAME.* to $MARIADB_USER_NAME@'%' identified by '$MARIADB_USER_PASS';
flush privileges;
exit" | mariadb;

service mariadb stop;


mysqld;
