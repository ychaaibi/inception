# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ychaaibi <ychaaibi@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/05 17:14:54 by ychaaibi          #+#    #+#              #
#    Updated: 2023/11/17 17:35:02 by ychaaibi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM            debian:bullseye

RUN             apt update -y && \
                apt upgrade -y && \
                apt install -y mariadb-server && \
                apt install -y vim curl wget

RUN             mkdir tools

COPY            tools/mariadb.sh tools/

COPY            conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

ENTRYPOINT      ["bash", "/tools/mariadb.sh"]

