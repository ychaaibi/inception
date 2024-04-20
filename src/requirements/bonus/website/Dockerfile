# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ychaaibi <ychaaibi@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/05 17:16:32 by ychaaibi          #+#    #+#              #
#    Updated: 2023/11/17 17:14:38 by ychaaibi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM    debian:bullseye

RUN     apt update -y && \
        apt upgrade -y && \
        apt install -y python3 python3-pip python3-flask

RUN     mkdir -p /website/conf/templates

COPY    conf/website.py /website/conf/

COPY    conf/templates/website.html /website/conf/templates

CMD     [ "python3", "/website/conf/website.py"]