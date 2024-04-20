# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ychaaibi <ychaaibi@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/05 17:13:54 by ychaaibi          #+#    #+#              #
#    Updated: 2023/11/17 16:50:40 by ychaaibi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM    debian:bullseye

RUN     apt update -y && \
        apt upgrade -y && \
        apt install -y wget

RUN     wget https://github.com/google/cadvisor/releases/download/v0.39.2/cadvisor && chmod +x cadvisor

CMD     [ "./cadvisor" ]
