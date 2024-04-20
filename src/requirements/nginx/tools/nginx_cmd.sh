# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    nginx_cmd.sh                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ychaaibi <ychaaibi@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/05 17:15:04 by ychaaibi          #+#    #+#              #
#    Updated: 2023/11/16 19:51:41 by ychaaibi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

openssl req -x509 -nodes -days 365 \
            -newkey rsa:2048  \
            -keyout  $KEY_POS  \
            -out  $CERT_POS \
            -subj "/C=$COUNTRY/L=$CITY/O=$ORGANIZATION/OU=$OU/CN=$DOMAIN_NAME";

nginx -g "daemon off;";