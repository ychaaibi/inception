# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ychaaibi <ychaaibi@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/05 17:13:43 by ychaaibi          #+#    #+#              #
#    Updated: 2023/11/17 16:50:45 by ychaaibi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM    debian:bullseye

RUN     apt update -y && \
        apt upgrade -y && \
        apt install -y php php-mysqli wget

RUN     mkdir /etc/adminer

WORKDIR /etc/adminer

RUN     wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php

CMD     [ "php", "-S", "0.0.0.0:8080", "adminer-4.8.1.php" ]