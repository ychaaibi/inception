# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ychaaibi <ychaaibi@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/16 11:02:56 by ychaaibi          #+#    #+#              #
#    Updated: 2023/11/16 12:37:19 by ychaaibi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

IMAGES 					= wordpress:1337 nginx:1337 mariadb:1337 \
		 			  ftp:1337 redis:1337 adminer:1337 website:1337 cadvisor:1337

VOLUME_WORDPRESS		= wordpress_vol

VOLUME_MARIADB 			= mariadb_vol

VOLUMES					= $(VOLUME_MARIADB) $(VOLUME_WORDPRESS)

VOLUME_MARIADB_PATH 	= /home/ychaaibi/data/$(VOLUME_WORDPRESS)

VOLUME_WORDPRESS_PATH	= /home/ychaaibi/data/$(VOLUME_MARIADB)

VOLUME_PATHS			= $(VOLUME_MARIADB_PATH) $(VOLUME_WORDPRESS_PATH)

up : create_volumes
	docker-compose -f ./src/docker-compose.yaml up &

down :
	docker-compose -f ./src/docker-compose.yaml down

start :
	docker-compose -f ./src/docker-compose.yaml start

stop :
	docker-compose -f ./src/docker-compose.yaml stop

clean_volumes :
	docker volume rm -f $(VOLUMES)
	rm -rf $(VOLUME_PATHS)

create_volumes :
	mkdir -p $(VOLUME_MARIADB_PATH)
	mkdir -p $(VOLUME_WORDPRESS_PATH)

clean_images :
	docker rmi -f $(IMAGES)

fclean : down clean_volumes clean_images

reset : fclean up

