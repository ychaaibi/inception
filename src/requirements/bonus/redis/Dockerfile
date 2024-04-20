# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ychaaibi <ychaaibi@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/05 17:15:47 by ychaaibi          #+#    #+#              #
#    Updated: 2023/11/17 16:50:36 by ychaaibi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM    debian:bullseye

RUN     apt update -y && apt upgrade -y && apt install -y redis

COPY    conf/redis.conf /etc/redis/redis.conf

CMD     [ "redis-server", "--protected-mode" , "no" ]