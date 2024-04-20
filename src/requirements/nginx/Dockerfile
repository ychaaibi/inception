# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ychaaibi <ychaaibi@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/05 17:15:35 by ychaaibi          #+#    #+#              #
#    Updated: 2023/11/17 17:14:21 by ychaaibi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM            debian:bullseye

RUN             apt update -y && \
                apt upgrade -y && \
                apt install -y nginx && \
                apt install -y wget vim curl

RUN             mkdir tools

COPY            tools/* tools

COPY            conf/wordpress.conf /etc/nginx/sites-enabled/

RUN             ln      -s /etc/nginx/sites-enabled /etc/nginx/sites-available;

RUN             rm      /etc/nginx/sites-enabled/default;

ENTRYPOINT      ["bash", "/tools/nginx_cmd.sh"]