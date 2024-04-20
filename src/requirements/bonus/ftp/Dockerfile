# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ychaaibi <ychaaibi@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/05 17:14:17 by ychaaibi          #+#    #+#              #
#    Updated: 2023/11/17 16:50:38 by ychaaibi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM        debian:bullseye

RUN         apt update -y && apt upgrade -y && apt install -y ftp vsftpd

RUN         mkdir tools

COPY        tools/vsftpd.sh /tools/vsftpd.sh

COPY        conf/vsftpd.conf etc/vsftpd.conf

ENTRYPOINT  [ "bash" ,"/tools/vsftpd.sh" ]
