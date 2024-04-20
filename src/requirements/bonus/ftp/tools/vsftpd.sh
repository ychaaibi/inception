# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    vsftpd.sh                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ychaaibi <ychaaibi@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/05 17:14:40 by ychaaibi          #+#    #+#              #
#    Updated: 2023/11/21 08:56:38 by ychaaibi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

chown   -R www-data:www-data /var/www/html/wordpress
chmod   775 /var/www/html/wordpress
mkdir -p /var/run/vsftpd/empty

adduser $FTP_USER_NAME --disabled-password --gecos ""
echo    $FTP_USER_NAME:$FTP_USER_PASS | /usr/sbin/chpasswd
echo    $FTP_USER_NAME > /etc/vsftpd.userlist
usermod -a -G www-data $FTP_USER_NAME
usermod -d /var/www/html/wordpress $FTP_USER_NAME

vsftpd