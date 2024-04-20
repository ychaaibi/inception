# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ychaaibi <ychaaibi@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/05 17:17:33 by ychaaibi          #+#    #+#              #
#    Updated: 2023/11/17 17:39:30 by ychaaibi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM    debian:bullseye

RUN     apt update -y && \
        apt upgrade -y && \
        apt install -y php php-fpm php-mysqli && \
        apt install -y vim curl wget

RUN     mkdir tools

COPY    tools/* tools

COPY    conf/www.conf   /etc/php/7.4/fpm/pool.d/www.conf

WORKDIR /var/www/html

RUN     bash /tools/wordpress_run.sh

CMD     [ "bash", "/tools/wordpress_cmd.sh"]

